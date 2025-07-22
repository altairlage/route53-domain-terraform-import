#!/usr/bin/env groovy

def repoName = 'route53-domain-terraform-import'
def gitHubUser = 'jenkins-gh'
def githubServerName = 'github.com/altairlage'
def gitHubUrl = "https://${githubServerName}/${repoName}.git"

def branch = (env.BRANCH_NAME)
def environment = getEnvironmentFromBranch(branch)

this.getProps()

echo("Branch: ${branch}")
echo("Environment: ${environment}")
echo("Region: ${region}")
echo("Terraform action: ${action}")

node("ubuntu_bionic") {
    deleteDir()

    try {
        stage("Checkout") {
            dir("files") {
                println("Service code branch: ${branch}")
                checkOut(gitHubUrl, branch, gitHubUser)
            }
        }

        stage("Terraform setup") {
            String terraformVersion = "1.12.2"
            String terraformZipFilename = "terraform_${terraformVersion}_linux_amd64.zip"
            sh("wget -q https://releases.hashicorp.com/terraform/${terraformVersion}/${terraformZipFilename} && \
                unzip -d /bin ${terraformZipFilename} terraform && rm ${terraformZipFilename}")
            sh("terraform -v")
        }

        stage("Deployment") {
            
            sts = getStsCreds(environment)

            dir("files/deploy/") {
                sts = accountGroups.getStsCreds(accountGroup, environment)
                withEnv(["AWS_ACCESS_KEY_ID=${sts[0]}", "AWS_SECRET_ACCESS_KEY=${sts[1]}", "AWS_SESSION_TOKEN=${sts[2]}"]) {
                    sh("terraform init -backend-config=./env/${environment}/${region}.tfbackend")
                    
                    if (action == "destroy") {
                        sh("terraform plan -${action} -var-file=\"./env/${environment}/${region}.tfvars\"")
                    } else {
                        sh("terraform plan -var-file=\"./env/${environment}/${region}.tfvars\"")
                    }
                }

                timeout(time: 20, unit: 'MINUTES') {
                    input(
                        message:  """
                            WARNING: Did you REALLY review the above terraform plan output?
                            Not being sure about the changes reported can effect the environment and cause problems to clients.
                            Action: ${action}
                            
                            Proceed or abort?
                            """,
                        id: 'proceed'
                    )
                }

                withEnv(["AWS_ACCESS_KEY_ID=${sts[0]}", "AWS_SECRET_ACCESS_KEY=${sts[1]}", "AWS_SESSION_TOKEN=${sts[2]}"]) {
                    sh("terraform ${action} -var-file=\"./env/${environment}/${region}.tfvars\" -auto-approve")
                }
            }
        }
    } catch(e) {
        error(e.getMessage())
    } finally {
        deleteDir()
    }
}

def getProps() {
    properties(
        [
            [
                $class:'ParametersDefinitionProperty',
                parameterDefinitions: [
                    [
                        $class: 'ChoiceParameterDefinition',
                        name: 'region',
                        choices: 'us-west-2\nus-east-1\neu-central-1\neu-west-1\nap-northeast-1',
                        description: 'Environment account region',
                        defaultValue: 'us-west-2'
                    ],
                    [
                        $class: 'ChoiceParameterDefinition',
                        name: 'action',
                        choices: 'apply\ndestroy',
                        description: 'Terraform action to be performed: apply or destroy',
                        defaultValue: 'apply'
                    ]
                ]
            ]
        ]
    )
}

def getEnvironmentFromBranch(branch) {
    def environmentMap = [
        'qa'      : 'qa',
        'staging' : 'staging',
        'master'  : 'prod'
    ]
    return environmentMap.get(branch, 'dev')
}

def checkOut(repo, branch, creds = 'jenkins-gh') {
    checkout(
        [
            $class: 'GitSCM',
            branches: [
                [
                    name: '*/' + branch
                ]
            ],
            doGenerateSubmoduleConfigurations: false,
            userRemoteConfigs: [
                [
                    credentialsId: creds,
                    url: repo
                ]
            ]
        ]
    )
}

def getAWSAccountId(environment) {
    file = new File('./deployment_helper/aws_accounts.json')
    json = new JsonSlurper().parse(file)

    accountId = json[environment]?.account

    println "Account for ${environment}: ${accountId}"
    return accountId
}

def getJenkinsRoleArn(String account) {
    return "arn:aws:iam::${account}:role/jenkins-role"
}

def Tuple getStsCreds(String environmentName) {
    String accountId = getAWSAccountId(environmentName)
    String roleArn = getJenkinsRoleArn(accountId)

    try {
        String cmd = "aws sts assume-role --role-arn ${roleArn} --role-session-name \"RoleSession1\" --output text" +
                " | awk 'END {print \$2 \"\\n\" \$4 \"\\n\" \$5}' > temp.txt"
        steps.sh(cmd)
    } catch (Exception e) {
        steps.println(e)
    }

    String key = steps.sh(returnStdout: true, script: 'head -1 temp.txt | tail -1 | tr -d "\n" ')
    String secret = steps.sh(returnStdout: true, script: 'head -2 temp.txt | tail -1 | tr -d "\n" ')
    String token = steps.sh(returnStdout: true, script: 'head -3 temp.txt | tail -1 | tr -d "\n" ')
    steps.sh('rm -f temp.txt')
    return [key, secret, token]
}

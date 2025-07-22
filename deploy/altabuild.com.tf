# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_route53_record" "das_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "das.altabuild.com"
  records                          = ["das100prodweb.azurewebsites.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "nextapiint_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "nextapiint.altabuild.com"
  records                          = ["afp100intafp.cloudapp.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "__domainkey_altabuild_com__TXT" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "_domainkey.altabuild.com"
  records                          = ["Entry= t=y; o=~;"]
  ttl                              = 172800
  type                             = "TXT"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "www_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "www.altabuild.com"
  records                          = ["www.altabuild.com.edgekey.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "dasdev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "dasdev.altabuild.com"
  records                          = ["das-dev-eu1-web.azurewebsites.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "altabuild_com__CAA" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "altabuild.com"
  records                          = ["0 iodef \"mailto:ITEngineersAPPDL@watchguard.com\"", "0 issue \"digicert.com\"", "0 issue \"letsencrypt.org\"", "0 issuewild \"digicert.com\"", "0 issuewild \"letsencrypt.org\""]
  ttl                              = 172800
  type                             = "CAA"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "config_nextdevdemo_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "config.nextdevdemo.altabuild.com"
  records                          = ["afp-demo-def-afp.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "config_nexttest_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "config.nexttest.altabuild.com"
  records                          = ["afp-qa-def-afp.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "nextdemo_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "nextdemo.altabuild.com"
  records                          = ["pcop-demo-def-console.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "next_documents_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "next-documents.altabuild.com"
  records                          = ["nextdocuments.azurewebsites.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "centraltest_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "centraltest.altabuild.com"
  records                          = ["pcw-qa-eu1-pcw.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "altabuild_com__NS" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "altabuild.com"
  records                          = ["ns-1489.awsdns-58.org.", "ns-1747.awsdns-26.co.uk.", "ns-718.awsdns-25.net.", "ns-95.awsdns-11.com."]
  ttl                              = 172800
  type                             = "NS"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "altabuild_com__MX" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "altabuild.com"
  records                          = ["10 mx01.hornetsecurity.com.", "20 mx02.hornetsecurity.com.", "30 mx03.hornetsecurity.com.", "40 mx04.hornetsecurity.com."]
  ttl                              = 300
  type                             = "MX"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "altabuild_com__SOA" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "altabuild.com"
  records                          = ["ns-95.awsdns-11.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl                              = 900
  type                             = "SOA"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "config_nextdemo_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "config.nextdemo.altabuild.com"
  records                          = ["afp-dem-def-afp.northeurope.cloudapp.azure.com."]
  ttl                              = 3600
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "config_nextdev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "config.nextdev.altabuild.com"
  records                          = ["afp-dev-def-applicationgateway-apis.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "nextint_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "nextint.altabuild.com"
  records                          = ["pcop-sta-eu1-console.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "dasint_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "dasint.altabuild.com"
  records                          = ["das-sta-eu1-web.azurewebsites.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "next__documents_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "next_documents.altabuild.com"
  records                          = ["nextdocuments.azurewebsites.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "orange_dev_usa_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "orange.dev.usa.altabuild.com"
  records                          = ["aet-dev-us1-eterweb.westus.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "selector2___domainkey_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "selector2._domainkey.altabuild.com"
  records                          = ["selector2-cytomic-ai._domainkey.wgt.onmicrosoft.com."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "ccndev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "ccndev.altabuild.com"
  records                          = ["eter-dev-def-applicationgateway-apis.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "nextapitest_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "nextapitest.altabuild.com"
  records                          = ["afp100testafp.cloudapp.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "lyncdiscover_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "lyncdiscover.altabuild.com"
  records                          = ["webdir.online.lync.com."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "api_orion_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "api.orion.altabuild.com"
  records                          = ["orionapimpro.azure-api.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "r_200608___domainkey_altabuild_com__TXT" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "200608._domainkey.altabuild.com"
  records                          = ["Entry= k=rsa;p=POIJd988OIJHPOIDFH0Joi0hjcoisd098Jhas98d7fyOAHSOPossd09f8has8dfd/fasiduh9hasd9f98aysdhfiuasd9f8yOUIHidofua+OSAOIAiuhasoiaoiasijASijs09sh8a98s09q38cu4ecnOHoHSAUhuSHoasndfpouhpUHiHpOUHSiuhPPOSIhOIJHuihsUJAPjaouhajiOIAi;"]
  ttl                              = 172800
  type                             = "TXT"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "info_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "info.altabuild.com"
  records                          = ["info.altabuild.com.edgekey.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "manage_dev_usa_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "manage.dev.usa.altabuild.com"
  records                          = ["aet-dev-us1-eterweb.westus.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "autodiscover_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "autodiscover.altabuild.com"
  records                          = ["autodiscover.outlook.com."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "config_next_dev_usa_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "config.next.dev.usa.altabuild.com"
  records                          = ["afp-dev-us1-afp.westus.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "apimdr_oriondev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "apimdr.oriondev.altabuild.com"
  records                          = ["mdrapimdev.azure-api.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "altabuild_com__TXT" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "altabuild.com"
  records                          = ["2t9ygyx8s94sllvsys3m639yjmwdytm1", "2tys09z94iEFdOEh6c4pCrSURSrzqTQwK6AVdFL/B4k=", "MS=ms66270148", "_km8c2zk489dks9yysjw8fc1iffxl250", "dv5zqzp6rg7zff4vfxq7w9lqvh1nhs81", "fq9q9jcgf8rd0d4jy92kk7hdj45d8b3m", "gcss611xycvh2n16h5xylwns05n5qg8v", "google-site-verification=R_Lu5nzakUrx1dUbItTQJYOV2WtbT-mdbrqGfvOK278", "pardot563342=28178c499f6c8f2f1d13f26399704535520c66a7370200e1755b31aeaa280b40", "v=spf1 mx include:include-spf2.altabuild.com include:aspmx.pardot.com include:spf.protection.outlook.com include:spf.hornetsecurity.com -all", "zk7lbdn2p83778dt0bl0kc9s2x4rcbdj"]
  ttl                              = 3600
  type                             = "TXT"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "config_nextint_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "config.nextint.altabuild.com"
  records                          = ["afp-sta-def-afp.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "__smtps___tcp_altabuild_com__SRV" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "_smtps._tcp.altabuild.com"
  records                          = ["0 0 465 altabuild.com"]
  ttl                              = 86400
  type                             = "SRV"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "apiint_oriondev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "apiint.oriondev.altabuild.com"
  records                          = ["orionapimint.azure-api.net."]
  ttl                              = 1
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "orangeint_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "orangeint.altabuild.com"
  records                          = ["eterwebeterintdefaltabuild.trafficmanager.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "nextapidev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "nextapidev.altabuild.com"
  records                          = ["afp100devafp.cloudapp.net."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "altabuild_com__A" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "altabuild.com"
  records                          = ["95.216.218.55"]
  ttl                              = 172800
  type                             = "A"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "__pop3s___tcp_altabuild_com__SRV" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "_pop3s._tcp.altabuild.com"
  records                          = ["0 0 995 altabuild.com"]
  ttl                              = 3600
  type                             = "SRV"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "__altfederation___tls_tcp_altabuild_com__SRV" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "_altfederation._tls.tcp.altabuild.com"
  records                          = ["100 1 5061 altfed.online.lync.com."]
  ttl                              = 300
  type                             = "SRV"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform from "Z08594101FYELTKZ39ADV"
resource "aws_route53_zone" "altabuild_com" {
  comment           = "Domain migrated from dns.mydatacenter.es. dnsmaster.mydatacenter.es."
  delegation_set_id = null
  force_destroy     = null
  name              = "altabuild.com"
  tags              = {}
  tags_all          = {}
}

# __generated__ by Terraform
resource "aws_route53_record" "selector1___domainkey_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "selector1._domainkey.altabuild.com"
  records                          = ["selector1-cytomic-ai._domainkey.wgt.onmicrosoft.com."]
  ttl                              = 172800
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "api_oriondev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "api.oriondev.altabuild.com"
  records                          = ["orionapimdev.azure-api.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "centralint_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "centralint.altabuild.com"
  records                          = ["pcw-sta-eu1-pcw.northeurope.cloudapp.azure.com."]
  ttl                              = 1
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "api_orionpre_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "api.orionpre.altabuild.com"
  records                          = ["orionapimpre.azure-api.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "orangedevdemo_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "orangedevdemo.altabuild.com"
  records                          = ["eter-demo-def-eterweb.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "central_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "central.altabuild.com"
  records                          = ["pcw-pro-def-pcw.northeurope.cloudapp.azure.com."]
  ttl                              = 1
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "ccn_dev_usa_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "ccn.dev.usa.altabuild.com"
  records                          = ["aet-dev-us1-eterweb.westus.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "democentral_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "democentral.altabuild.com"
  records                          = ["pcw-demo-def-pcw.northeurope.cloudapp.azure.com."]
  ttl                              = 1
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "__imaps___tcp_altabuild_com__SRV" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "_imaps._tcp.altabuild.com"
  records                          = ["0 0 993 altabuild.com."]
  ttl                              = 86400
  type                             = "SRV"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "next_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "next.altabuild.com"
  records                          = ["pcop-pro-def-console.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "alt_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "alt.altabuild.com"
  records                          = ["altdir.online.lync.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "orangedev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "orangedev.altabuild.com"
  records                          = ["eter-dev-def-applicationgateway-apis.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "ccnint_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "ccnint.altabuild.com"
  records                          = ["eterwebeterintdefaltabuild.trafficmanager.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "centraldev_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "centraldev.altabuild.com"
  records                          = ["pcw-dev-eu1-pcw.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "nexttest_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "nexttest.altabuild.com"
  records                          = ["pcop-qa-eu1-console.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "orange_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "orange.altabuild.com"
  records                          = ["eterwebeterprodefaltabuild.trafficmanager.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "centraldevdemo_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "centraldevdemo.altabuild.com"
  records                          = ["dev-demo-eu1-pcw.northeurope.cloudapp.azure.com."]
  ttl                              = 1
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "__dmarc_altabuild_com__TXT" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "_dmarc.altabuild.com"
  records                          = ["v=DMARC1; p=none; sp=none; rf=afrf; pct=100; ri=86400"]
  ttl                              = 172800
  type                             = "TXT"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "ccn_cert_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "ccn-cert.altabuild.com"
  records                          = ["webeterprodefaltabuild.trafficmanager.net."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "config_next_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "config.next.altabuild.com"
  records                          = ["afp-pro-def-afp.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "__alt___tls_altabuild_com__SRV" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "_alt._tls.altabuild.com"
  records                          = ["100 1 443 altdir.online.lync.com."]
  ttl                              = 172800
  type                             = "SRV"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}

# __generated__ by Terraform
resource "aws_route53_record" "nextdevdemo_altabuild_com__CNAME" {
  allow_overwrite                  = null
  health_check_id                  = null
  name                             = "nextdevdemo.altabuild.com"
  records                          = ["demo-eu1-console.northeurope.cloudapp.azure.com."]
  ttl                              = 300
  type                             = "CNAME"
  zone_id                          = "Z08594101FYELTKZ39ADV"
}
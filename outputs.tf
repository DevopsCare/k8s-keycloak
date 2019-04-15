output "client_secret" {
  value ="${module.keycloak.client-secret}"
}

output "keycloak_domain" {
  value = "${module.keycloak.keycloak-subdomain}.${var.project_fqdn}"
}

output "oauth_proxy_address" {
  value = "${module.keycloak.oauth-proxy-address}"
}

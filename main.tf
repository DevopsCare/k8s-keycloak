provider "keycloak" {
  client_id = "admin-cli"
  username  = "${var.keycloak_username}"
  password  = "${module.keycloak.keycloak-password}"
  url       = "https://${module.keycloak.keycloak-subdomain}.${var.project_fqdn}"
}

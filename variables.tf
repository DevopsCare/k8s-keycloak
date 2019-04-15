variable "project_prefix" {
  type = "string"
}
variable "project_fqdn" {
  type = "string"
}

variable "keycloak_username" {
  default = "keycloak"
}

variable "ldap_bind_dn" {
  type = "string"
}
variable "ldap_host" {
  type = "string"
}
variable "ldap_password" {
  type = "string"
}
variable "users_dn" {
  type = "string"
}

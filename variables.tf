/*
* Copyright (c) 2020 Risk Focus Inc.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

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

variable "kubernetes_host" {}
variable "kubernetes_ca_certificate" {}
variable "kubernetes_token" {}

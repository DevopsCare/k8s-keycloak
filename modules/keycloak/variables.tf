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

variable "keycloak_chart_version" {
  default = "4.6.1"
}

variable "keycloak_release_name" {
  default = "keycloak"
}

variable "keycloak_namespace" {
  default = "default"
}

variable "keycloak_username" {
  default = "keycloak"
}

variable "keycloak_password" {
  default = ""
}

variable "oauth_ingress_name" {
  default = "oauth"
}

variable "oauth_proxy_chart_version" {
  default = "0.11.0"
}

variable "oauth_proxy_release_name" {
  default = "oauth2-proxy"
}

variable "oauth_proxy_namespace" {
  default = "default"
}

variable "realm_name" {
  default = "weissr.click"
}

variable "root_domain" {
  type = "string"
}

variable "ldap_bind_dn" {
  type = "string"
}

variable "ldap_password" {
  type = "string"
}

variable "ldap_host" {
  type = "string"
}

variable "users_dn" {
  type = "string"
}

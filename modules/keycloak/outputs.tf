
/*
*Copyright (c) 2020 Risk Focus Inc.
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


output "oauth-proxy-address" {
  value = "${var.oauth_ingress_name}.${var.oauth_proxy_namespace}.${var.root_domain}"
}

output "client-secret" {
  value = "${keycloak_openid_client.openid_client.client_secret}"
}

output "keycloak-subdomain" {
  value = "${var.keycloak_release_name}.${var.keycloak_namespace}"
}

output "keycloak-username" {
  value = "${var.keycloak_username}"
}

output "keycloak-password" {
  value = "${var.keycloak_password == "" ? random_string.keycloak-password.*.result[0] : var.keycloak_password}"
}

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

resource "random_string" "keycloak-password" {
  length  = 16
  special = false
}

resource "random_string" "keycloak-postgresql-password" {
  length  = 16
  special = false
}

data "template_file" "keycloak-values" {
  template = file("${path.module}/templates/keycloak-values.yaml.tpl")

  vars = {
    ingress_name      = var.keycloak_release_name
    username          = var.keycloak_username
    password          = var.keycloak_password == "" ? random_string.keycloak-password.*.result[0] : var.keycloak_password
    postgres_password = random_string.keycloak-postgresql-password.result
  }
}

data "template_file" "oauth-proxy-values" {
  template = file("${path.module}/templates/oauth-proxy-values.yaml.tpl")

  vars = {
    client_id       = keycloak_openid_client.openid_client.client_id
    client_secret   = keycloak_openid_client.openid_client.client_secret
    ingress_name    = var.oauth_ingress_name
    keycloak_domain = "${var.keycloak_release_name}.${var.keycloak_namespace}.${var.root_domain}"
    realm           = keycloak_realm.realm.realm
    root_domain     = var.root_domain
  }
}

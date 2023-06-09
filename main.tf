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

provider "keycloak" {
  client_id = "admin-cli"
  username  = var.keycloak_username
  password  = module.keycloak.keycloak-password
  url       = "https://${module.keycloak.keycloak-subdomain}.${var.project_fqdn}"
}

provider "helm" {
  kubernetes {
    host                   = var.kubernetes_host
    cluster_ca_certificate = var.kubernetes_ca_certificate
  }
}

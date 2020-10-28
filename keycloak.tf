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

module "keycloak" {
  source        = "modules/keycloak"
  realm_name    = var.project_prefix
  root_domain   = var.project_fqdn
  ldap_password = var.ldap_password
  ldap_bind_dn  = var.ldap_bind_dn
  ldap_host     = var.ldap_host
  users_dn      = var.users_dn
}

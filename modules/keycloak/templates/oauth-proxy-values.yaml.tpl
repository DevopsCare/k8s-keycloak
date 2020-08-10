
#
# Copyright (c) 2020 Risk Focus Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

service:
  annotations:
    fabric8.io/expose: "true"
    fabric8.io/ingress.annotations: |-
      kubernetes.io/ingress.class: nginx
      certmanager.k8s.io/cluster-issuer: letsencrypt-prod
    fabric8.io/ingress.name: ${ingress_name}
    fabric8.io/ingress.path: /oauth2

config:
  clientID: ${client_id}
  clientSecret: ${client_secret}
  configFile: |-
    email_domains = [ "*" ]
    cookie_domain = "${root_domain}"
    oidc_issuer_url = "https://${keycloak_domain}/auth/realms/${realm}"
    provider = "oidc"
    whitelist-domain = "${root_domain}"

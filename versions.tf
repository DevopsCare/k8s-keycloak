terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2"
    }
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "~> 1"
    }
  }
  required_version = "~> 1.0"
}

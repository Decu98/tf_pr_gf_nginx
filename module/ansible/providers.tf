terraform {
  required_providers {
    ansible = {
      source = "ansible/ansible"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 3.0"
    }
  }
}
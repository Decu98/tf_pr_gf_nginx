provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = var.kubernetes_context
}

resource "kubernetes_namespace_v1" "observability_namespace" {
  metadata {
    name = var.observability_namespace
  }
}

resource "kubernetes_namespace_v1" "ingress_namespace" {
  metadata {
    name = var.ingress_namespace
  }
}

resource "kubernetes_secret_v1" "grafana-admin" {
  metadata {
    name = "grafana-admin"
    namespace = var.observability_namespace
  }
  data = {
    "admin-user" =  "admin"
    "admin-password" = var.grafana_admin_password
  }
}
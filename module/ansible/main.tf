provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = var.kubernetes_context
}

resource "kubernetes_namespace_v1" "observability_namespace" {
  metadata {
    name = var.observability_namespace
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

resource "ansible_playbook" "Helm_Prometheus_Grafana" {
  playbook = "${path.module}/playbooks/prometheus_grafana.yml"
  name = "Prometheus_Grafana"
  replayable = true
  extra_vars = {
    observability_namespace = var.observability_namespace
    grafana_admin_password = var.grafana_admin_password
    kubernetes_context = var.kubernetes_context
    values_files = var.prometheus_helm_values
  }
  depends_on = [ 
    kubernetes_namespace_v1.observability_namespace,
    kubernetes_secret_v1.grafana-admin
   ]
}
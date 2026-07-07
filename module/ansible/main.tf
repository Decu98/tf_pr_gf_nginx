resource "ansible_playbook" "Helm_Prometheus_Grafana" {
  playbook = "${path.module}/playbooks/prometheus_grafana.yml"
  name = "Prometheus_Grafana"
  replayable = true
  extra_vars = {
    observability_namespace = var.observability_namespace
    kubernetes_context = var.kubernetes_context
    values_files = var.prometheus_helm_values
  }
}
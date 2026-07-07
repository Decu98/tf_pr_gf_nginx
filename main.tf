module "ansible" {
    source = "./module/ansible"
    kubernetes_context = "minikube"    
    prometheus_helm_values = "../helm/prometheus/values.yaml"
    grafana_admin_password = var.grafana_admin_password
    observability_namespace = "monitoring"
}
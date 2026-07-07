module "kubernetes" {
    source = "./module/kubernetes"
    kubernetes_context = "minikube"    
    observability_namespace = "monitoring"
    grafana_admin_password = var.grafana_admin_password
}

module "ansible" {
    source = "./module/ansible"
    kubernetes_context = "minikube"    
    observability_namespace = "monitoring"
    prometheus_helm_values = "../helm/prometheus/values.yaml"
    depends_on = [
        module.kubernetes
    ]
}
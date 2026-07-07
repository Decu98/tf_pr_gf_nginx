module "kubernetes" {
    source = "./module/kubernetes"
    kubernetes_context = "minikube"    
    observability_namespace = "monitoring"
    ingress_namespace = "ingress"
    grafana_admin_password = var.grafana_admin_password
}

module "ansible" {
    source = "./module/ansible"
    kubernetes_context = "minikube"    
    observability_namespace = "monitoring"
    ingress_namespace = "ingress"
    prometheus_helm_values = "../helm/prometheus/values.yaml"
    nginx_helm_values = "../helm/nginx-ingress/values.yaml"
    depends_on = [
        module.kubernetes
    ]
}
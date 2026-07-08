module "kubernetes" {
    source = "./module/kubernetes"
    kubernetes_context = var.kubernetes_context
    observability_namespace = var.observability_namespace
    ingress_namespace = var.ingress_namespace
    grafana_admin_password = var.grafana_admin_password
}

module "ansible" {
    source = "./module/ansible"
    kubernetes_context = var.kubernetes_context
    observability_namespace = var.observability_namespace
    ingress_namespace = var.ingress_namespace
    prometheus_helm_values = "../helm/prometheus/values.yaml"
    nginx_helm_values = "../helm/nginx-ingress/values.yaml"
    depends_on = [
        module.kubernetes
    ]
}
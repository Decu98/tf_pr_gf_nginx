variable "kubernetes_context" {
    type = string
    default = "minikube"
    description = "Context Name of Kubernetes"
}

variable "grafana_admin_password" {
    type = string
    sensitive = true
    description = "Grafana Admin Password"
}

variable "observability_namespace" {
    type = string
    description = "Namespace for Prometheus and Grafana"
}

variable "ingress_namespace" {
    type = string
    description = "Namespace for Nginx-Ingress"
}

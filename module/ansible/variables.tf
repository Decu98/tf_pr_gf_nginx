variable "kubernetes_context" {
    type = string
    default = "minikube"
    description = "Context Name of Kubernetes"
}

variable "prometheus_helm_values" {
    type = string
    default = "./helm/prometheus/values.yaml"
    description = "Prometheus Helm Values Path"
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
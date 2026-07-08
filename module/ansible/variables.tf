variable "kubernetes_context" {
    type = string
    default = "minikube"
    description = "Context Name of Kubernetes"
}

variable "observability_namespace" {
    type = string
    description = "Namespace for Prometheus and Grafana"
}

variable "ingress_namespace" {
    type = string
    description = "Namespace for Nginx Ingress"
}

variable "prometheus_helm_values" {
    type = string
    default = "./helm/prometheus/values.yaml"
    description = "Prometheus Helm Values Path"
}

variable "nginx_helm_values" {
    type = string
    default = "./helm/nginx-ingress/values.yaml"
    description = "Nginx Helm Values Path"
}
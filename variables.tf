variable "grafana_admin_password" {
    type = string
    sensitive = true
    description = "Grafana Admin Password"
}

variable "kubernetes_context" {
  type        = string
  default     = "minikube"
  description = "Context Name of Kubernetes"
}

variable "observability_namespace" {
  type        = string
  default     = "monitoring"
  description = "Namespace for Prometheus and Grafana"
}

variable "ingress_namespace" {
  type        = string
  default     = "ingress"
  description = "Namespace for Nginx Ingress"
}
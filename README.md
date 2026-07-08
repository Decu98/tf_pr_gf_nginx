# IaC

## Tools
Terraform\
Ansible\
Helm

## Goals
IaC that deploy Prometheus with Grafana for monitoring purpose\
NGINX as a target of monitoring

## Assumptions

- We are using **Kubernetes** as a target of deployment
- **Kubernetes** is already existing, user that use the REPO have access to Kubernetes Context
- Defualt Kubernetes config is in `~/.kube/config`
- **NGINX** is normal server not a NGINX-INGRESS
- OS os user is Linux or UNIX compatible
- Deployments are done using **HELM**

## Requirements

- Python >= 3.12
- PIP >= 26.1
- Terraform >= 1.15
- Ansible (core) >= 2.21
- Ansible (kubernetes.core)
- Helm >= 3.0.0

## Variables
- kubernetes_context - set in **main.tf**, targeded kontext in kubernetes
- observability_namespace - set in **main.tf**, namespace for obervability pods
- ingress_namespace - set in **main.tf**, namespace for nginx ingress
- prometheus_helm_values - set in **main.tf**, path to helm values of prometheus

## Secrets
- grafana_admin_password - set on apply, password for admin in grafana

## Steps

```
terraform init
terraform plan
terraform apply
```
## Minikube

To use DNS with minikube tunel is needed and set /etc/hosts routes
```
minikube tunnel
```
**/etc/hosts**
```
127.0.0.1 grafana.localhost
127.0.0.1 prometheus.localhost
```


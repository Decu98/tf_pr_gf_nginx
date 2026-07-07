# IaC

## Tools
Terraform
Ansible

## Goals
IaC that deploy Prometheus with Grafana for monitoring purpose
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

## Steps

```
terraform init
terraform plan
terraform apply
```

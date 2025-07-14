# 🎬 Prime Video Clone - DevSecOps on AWS EKS

🚀 A fully automated end-to-end DevSecOps pipeline deploying a secure, scalable Prime Video Clone on AWS EKS.

---

## 🔥 Features
- 🐳 Containerized Node.js app (mock video streaming)
- ⚙️ Helm charts for Kubernetes
- ☁️ Provision AWS EKS with Terraform
- 🔄 CI/CD pipeline via Jenkins
- 🔍 Static code & dependency scans via SonarQube & Trivy
- 📊 Monitoring with Prometheus & Grafana

---

## 🏗️ Tech Stack
| Tool           | Purpose                           |
|----------------|----------------------------------|
| 📝 Node.js     | Mock video app                   |
| 🐳 Docker      | Containerize app                 |
| ☸️ Kubernetes  | Orchestrate on AWS EKS           |
| ⚙️ Helm       | Deploy via Helm charts           |
| 🌩️ Terraform  | Provision infra on AWS (EKS, VPC)|
| 🔧 Jenkins     | CI/CD orchestration              |
| 🔎 SonarQube   | Static code analysis             |
| 🕷️ Trivy      | Image scanning                   |
| 📊 Grafana    | Monitoring dashboards            |

---

## 🚀 Pipeline Overview
| Stage          | Tools & Actions                       |
|----------------|--------------------------------------|
| 🏗️ Build       | npm install, docker build            |
| 🧪 Test         | Jest/unit tests                     |
| 🔍 Scan         | SonarQube, Trivy                    |
| ☸️ Deploy      | Terraform infra + Helm deploy       |
| 📊 Monitor     | Prometheus, Grafana                 |

---

## 🚀 Directory
```
prime-video-devsecops-eks/
├── app/                   # Node.js app (mock Prime Video clone)
│   ├── index.js
│   ├── package.json
│   └── ...
├── Dockerfile             # Docker build
├── terraform/             # IaC AWS EKS, IAM, S3, etc
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
├── helm/                  # Helm chart
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│       ├── deployment.yaml
│       └── service.yaml
├── Jenkinsfile            # Jenkins pipeline
├── sonar-project.properties # SonarQube
├── .trivyignore           # Trivy config
├── .scout.yml             # Scout config (mock)
├── README.md              
```

---

## 🔧 Quick Start

```bash
# Provision infrastructure
cd terraform
terraform init && terraform apply

# Build & push Docker image
docker build -t yourdockerhub/prime-video-clone .
docker push yourdockerhub/prime-video-clone

# Deploy to EKS
cd helm
helm install prime-video .

✅ Enjoy your secure, scalable, cloud-native Prime Video Clone! 🚀

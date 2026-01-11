# 🚚 MoveOps – DevOps Delivery Platform

MoveOps is a small delivery booking platform created to demonstrate **real DevOps practices** from local development to production-like environments.

The focus of this project is not the application itself, but the **infrastructure, automation, CI/CD pipelines and observability** behind it.

---

## 🧠 Project Goals

- Apply real-world **DevOps best practices**
- Use **Infrastructure as Code (Terraform)**
- Build and deploy containerized applications with **Docker**
- Orchestrate services using **Kubernetes**
- Implement **CI/CD pipelines** with GitHub Actions
- Add **monitoring and observability** using Prometheus and Grafana
- Keep everything **100% local and cost-free**

---

## 🏗️ Architecture Overview

Developer → GitHub → GitHub Actions → Docker Images  
↓  
Local Kubernetes (Kind)  
↓  
Backend API + Frontend  
↓  
Prometheus + Grafana

---

## 🧩 Application Overview

### Backend
- Python (FastAPI)
- REST API
- Health check endpoint
- Metrics exposed for monitoring

### Frontend
- Minimal web interface
- Communicates with backend API

---

## 🛠️ Tech Stack

- **Backend:** Python (FastAPI)
- **Containers:** Docker
- **Orchestration:** Kubernetes (Kind)
- **IaC:** Terraform
- **CI/CD:** GitHub Actions
- **Monitoring:** Prometheus & Grafana
- **OS:** Linux

---

## 📁 Repository Structure

moveops/  
├── backend/                – Backend API  
├── frontend/               – Minimal frontend  
├── docker/                 – Dockerfiles  
├── k8s/                    – Kubernetes manifests  
├── terraform/              – Infrastructure as Code  
├── monitoring/             – Prometheus & Grafana configs  
├── .github/workflows/      – CI/CD pipelines  
└── README.md  

---

## 🚀 Getting Started (Local)

### Prerequisites
- Docker  
- Kind  
- kubectl  
- Terraform  
- Python 3.10+  

---

### Run backend locally (initial version)

```bash

docker build -f docker/backend.Dockerfile -t moveops-backend .
docker run -p 8000:8000 moveops-backend
```
Check:

http://localhost:8000

http://localhost:8000/health

📊 Monitoring

Monitoring will be added in later stages of the project and will include:

Prometheus scraping application and cluster metrics

Grafana dashboards for service health and performance

📌 Project Status

🚧 Work in progress.

👤 Author

Iván Ortiz
Cloud & Infrastructure Engineer
DevOps-oriented


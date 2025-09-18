# 🏢 Job Portal Application

A **backend project** built with **Spring Boot (Java)** to manage and serve job listings via RESTful APIs.  
This project demonstrates my experience with backend development, containerization, and cloud deployment.

---

## 🚀 Tech Stack

- **Backend Framework:** Spring Boot (Java)  
- **Build Tool:** Maven  
- **Database Integration:** JPA / Hibernate  
- **Configuration Management:** `application.properties`  
- **Containerization:** Docker (multi-stage build for optimized image)  
- **Deployment Platform:** Render Cloud  
- **Version Control:** Git & GitHub  

---

## ⚙️ Features

- RESTful APIs for job listings and related functionalities  
- Root endpoint (`/`) mapping to confirm project health  
- Optimized persistence layer with `spring.jpa.open-in-view=false`  
- Multi-stage Docker build:
  - `maven:3-openjdk-17-slim` → Build stage  
  - `openjdk:17-jdk-slim` → Runtime stage  

---

## 🌐 Live Demo

👉 **Render Deployment Link:** https://job-portal-1-7s84.onrender.com

📂 **GitHub Repo:** [Job Portal Repo](https://github.com/imzishan/job_portal)  

---

## 🔑 Important Notes

- Render usually takes **1–2 minutes** to load the project on the first request (cold start).  
- This is a **backend-only project** — no UI or landing page.  
  - Example endpoint: `/jobs`  

---

## 🛠️ How to Run Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/imzishan/job_portal.git

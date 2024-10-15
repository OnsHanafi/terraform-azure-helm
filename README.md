# 🌟 Production-Ready Azure Service using Terraform 🌟

This project demonstrates how to deploy a **production-ready Azure Kubernetes Service (AKS)** cluster using Terraform. It includes setting up networking, security, load balancing, and other key infrastructure components, along with deploying Nginx Ingress and Cert Manager using Helm.

## 🚀 Tools Used
- **Helm**
- **Terraform**
- **Kubernetes**
- **Azure**

## 🌐 Project Overview
This project covers the deployment of a robust AKS infrastructure with Terraform, focusing on managing networking, security, and scaling features.

### 🔧 Steps Involved:
1. **Create a Resource Group:**  
   Organizes all resources within this group.
   
2. **Create an Azure Virtual Network (VNet) using Terraform:**  
   - Subnets are created within the VNet for network segmentation.
   
3. **Set up Managed Identity for AKS:**  
   - Use the managed identity to create the AKS cluster.
   - Bind it with an Azure role to enable public and private Kubernetes load balancers.

4. **Enable OIDC and Workload Identity:**  
   Allows pods to authenticate against Azure without storing secrets.

5. **Deploy Nginx Ingress and Cert Manager using Helm:**  
   Manages external traffic routing and automates TLS certificate management.

---

## ⚙️ Key Features and Implementation

### 1. **Setting up the Infrastructure**  
   Set up the infrastructure components using Terraform, including the resource group, VNet, subnets, Kubernetes cluster, and spot nodes.  
   <img src="https://github.com/user-attachments/assets/1673a3d6-35fb-427b-8578-393018ccc027" width="400">
   <img src="https://github.com/user-attachments/assets/23a68b8f-4430-4a58-b5f4-e3b54c30000c" width="300">

---

### 2. **Setting up Public and Private Load Balancers**  
   Configured both public and private load balancers for the application.  
   <img src="https://github.com/user-attachments/assets/2536667f-0860-4f86-9b56-314c2ebb92be" width="500">

---

### 3. **Autoscaling Configuration**  
   Enabled autoscaling by configuring the autoscaling block within the instance settings.

---

### 4. **Ingress Configuration**  
   Deployed an external ingress controller in the cluster using Terraform and Helm.  
   <img src="https://github.com/user-attachments/assets/b6b5f9e6-7a03-4cff-8340-1de60a384cee" width="500">

---

### 5. **Secure Ingress with TLS Certificates**  
   Cert Manager is deployed to automatically update and renew TLS certificates, ensuring secure endpoints for the services.  
   <img src="https://github.com/user-attachments/assets/e9ea58c0-e19a-4908-b1d2-cd59f6677ace" width="500">
   <img src="https://github.com/user-attachments/assets/7ddf64bc-5a99-408f-8d71-59bb06049d84" width="500">

#### 🔐 Certificate Created by Cert Manager:
   <img src="https://github.com/user-attachments/assets/69453107-8baa-452f-a6a9-e10d8baefd42" width="500">

#### 🔒 The Endpoint is Secure:
   <img src="https://github.com/user-attachments/assets/69eb47c4-762f-408f-939f-67e5be42c2a9" width="500">

---

### 6. **Setup Workload Identity**  
   Allows pods to authenticate against Azure resources without secrets or credentials stored within the cluster.
   - A new managed identity is created and mapped to the Kubernetes service account.
   - Identity credentials are managed as Kubernetes resources.
   <img src="https://github.com/user-attachments/assets/9d2ab786-2196-4537-bfd8-3c30742da093" width="500">



---

## 🎯 Result
A fully functional AKS environment with:
- Scalable cluster.
- Secure ingress and TLS management.
- Workload identity integration for seamless pod authentication.

---

## 📘 Notes
- **AKS** manages the Kubernetes environment, including Pods, Services, and Ingress resources.
- **Nginx Ingress** manages external traffic routing to services within the AKS cluster.
- **Cert Manager** ensures automatic TLS certificate management for secure endpoints.


# AWS Infrastructure Provisioning Using Terraform

## 📌 Project Overview

This project demonstrates how to provision and manage AWS infrastructure using **Terraform** with a modular architecture.

The infrastructure is organized into reusable Terraform modules, making it easier to maintain, scale, and manage AWS resources.

The project follows Infrastructure as Code (IaC) principles to automate AWS resource provisioning.

## 🎯 Project Objectives

- Automate AWS infrastructure provisioning using Terraform.
- Create reusable and maintainable Terraform modules.
- Organize infrastructure code using a modular structure.
- Manage AWS resources through Infrastructure as Code.
- Maintain project source code using Git and GitHub.

## 🏗️ AWS Resources Provisioned

| AWS Resource | Purpose |
|---|---|
| VPC | Creates an isolated virtual network |
| Subnet | Provides network segmentation |
| Internet Gateway | Enables internet connectivity |
| Route Table | Manages network traffic routing |
| Security Group | Controls inbound and outbound traffic |
| EC2 | Provides virtual compute infrastructure |
| S3 | Provides object storage |
| IAM | Manages users and permissions |

## 🛠️ Technologies Used

- AWS
- Terraform
- Linux
- Git
- GitHub

## 📂 Project Structure

```text
terraform-aws-modular-project/
│
├── environment/
│   └── dev/
│       ├── main.tf
│       ├── provider.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── modules/
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── iam/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── s3/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── security-group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── vpc/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── .gitignore
```

## ⚙️ Prerequisites

Before running this project, ensure you have:

1. An AWS account.
2. AWS CLI installed and configured, or an appropriate IAM role attached to your EC2 instance.
3. Terraform installed.
4. Git installed.
5. Basic knowledge of AWS and Terraform.

## 🚀 Deployment Steps

### Step 1: Clone the repository

```bash
git clone https://github.com/Deepaksannasi/terraform-aws-modular-project.git
```

### Step 2: Navigate to the development environment

```bash
cd terraform-aws-modular-project/environment/dev
```

### Step 3: Initialize Terraform

```bash
terraform init
```

### Step 4: Validate the configuration

```bash
terraform validate
```

### Step 5: Format Terraform files

```bash
terraform fmt -recursive
```

### Step 6: Review the execution plan

```bash
terraform plan
```

### Step 7: Deploy AWS infrastructure

```bash
terraform apply
```

Review the execution plan and type `yes` when prompted.

## 🔄 Terraform Workflow

```text
Write Terraform Configuration
          |
          v
     terraform init
          |
          v
    terraform fmt
          |
          v
   terraform validate
          |
          v
     terraform plan
          |
          v
     terraform apply
          |
          v
   AWS Infrastructure
```

## 🔐 Security Best Practices

- Do not hardcode AWS access keys or secret keys.
- Use IAM roles wherever possible.
- Follow the principle of least privilege.
- Restrict Security Group access to required ports and trusted IP addresses.
- Never upload Terraform state files to public repositories.
- Keep sensitive `.tfvars` files out of Git.
- Use remote state storage with locking for collaborative environments.

## 🧹 Cleanup

To remove resources created by this project when they are no longer needed:

```bash
terraform destroy
```

Review the resources carefully before confirming destruction.

**Note:** Terraform state files and variable files containing secrets should not be committed to GitHub.

## 📚 Key Learnings

Through this project, I gained practical experience with:

- Terraform modules and reusable configurations.
- AWS infrastructure provisioning.
- Terraform variables and outputs.
- Infrastructure as Code concepts.
- Git and GitHub version control.
- AWS networking and IAM fundamentals.
- Terraform initialization, validation, planning, and deployment.

## 👨‍💻 Author

**Deepak**

AWS | DevOps | Terraform | Linux | Git

## 🔗 GitHub Repository

[terraform-aws-modular-project](https://github.com/Deepaksannasi/terraform-aws-modular-project)

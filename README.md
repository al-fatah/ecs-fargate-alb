# ECS Fargate + ALB + Auto Scaling (Terraform)

This project deploys a complete **AWS ECS Fargate** environment using
**Terraform**, including:

-   Custom VPC
-   Public subnets in 2 AZs
-   Internet Gateway + Route Tables
-   ECS Cluster
-   Fargate Task Definition
-   ECS Service
-   Application Load Balancer (ALB)
-   Target Group + Listener
-   Auto Scaling (Target Tracking CPU)
-   CloudWatch Log Group
-   Security Groups (ALB + ECS Tasks)

------------------------------------------------------------------------

## 🏗 Architecture Overview

1.  VPC (10.0.0.0/16)
2.  Two public subnets in different AZs
3.  ALB exposed to the internet (HTTP 80)
4.  ECS Service running multiple Fargate tasks
5.  Auto Scaling adjusts desired task count based on CPU
6.  Logs stored in CloudWatch Log Group

------------------------------------------------------------------------

## 🚀 Deployment

### 1. Initialize Terraform

    terraform init

### 2. Preview resources

    terraform plan

### 3. Deploy infrastructure

    terraform apply -auto-approve

After deployment, Terraform outputs:

    alb_dns_name = your-alb-url.elb.amazonaws.com

Open it in your browser to access the running application.

------------------------------------------------------------------------

## 📦 File Structure

    main.tf        # All AWS resources
    variables.tf   # Input variables
    outputs.tf     # Terraform outputs
    .gitignore     # Prevents pushing state files
    README.md      # Documentation

------------------------------------------------------------------------

## 🛑 Important Notes

-   **Never commit terraform.tfstate to GitHub**
-   Always configure `.gitignore`
-   Destroy infrastructure when done:
```
    terraform destroy
```
------------------------------------------------------------------------

## 🧹 Cleanup

To remove all AWS resources created:

    terraform destroy -auto-approve

This will delete the ECS cluster, ALB, VPC, subnets, and all related
resources.

------------------------------------------------------------------------

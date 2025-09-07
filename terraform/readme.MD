# Terraform on AWS – Setup & Usage Guide

## Step 1: Install Terraform
```bash
sudo apt-get update
sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update
sudo apt-get install terraform -y
terraform -version
```

## Step 2: Install AWS CLI

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt-get install unzip -y
unzip awscliv2.zip
sudo ./aws/install
aws --version
```

## Step 3: Configure AWS CLI (only if not configured)

```bash
aws configure
```

## Step 4: Create Terraform Project Directory

```bash
mkdir terraform
cd terraform

```

## Step 5: Create Terraform Files

main.tf → main configuration

variables.tf → input variables

output.tf → outputs

## Step 6: Initialize Terraform

```bash
terraform init
```

## Step 7: Preview Execution Plan 

You can see it when you run "terraform apply"

```bash
terraform plan
```
## Step 8: Apply Configuration

```bash
terraform apply
```
Confirm with yes.

(Optional: without confirmation)

```bash
terraform apply -auto-approve
```

## Step 10: Destroy Resources (Cleanup)
```bash
terraform destroy
```
It will also ask for the permission


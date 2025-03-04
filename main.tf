provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = "my-eks-cluster"
  node_group_name = "my-node-group"
  instance_types  = ["t3.medium"]
}

module "delegate" {
  source = "harness/harness-delegate/kubernetes"
  version = "0.1.8"

  account_id = "ucHySz2jQKKWQweZdXyCog"
  delegate_token = "NzY5NTY3ZjJkYTczNWNjZDJjMmIwN2Y4MTA4NTJkNzM="
  delegate_name = "terraform-delegate"
  deploy_mode = "KUBERNETES"
  namespace = "default"
  manager_endpoint = "https://app.harness.io"
  delegate_image = "harness/delegate:25.02.85300"
  replicas = 1
  upgrader_enabled = true
depends_on = [module.eks]
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

  


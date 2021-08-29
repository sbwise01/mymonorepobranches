provider "aws" {
  region  = var.region
  version = "~> 3.27"

  assume_role {
    role_arn     = var.assume_role_arn
    session_name = var.assume_role_session
    external_id  = var.assume_role_session
  }
}

data "aws_eks_cluster" "eks" {
  name = module.platform.eks_cluster_id
}

data "aws_eks_cluster_auth" "eks" {
  name = module.platform.eks_cluster_id
}

provider "kubernetes" {
  alias                  = "eks"
  host                   = data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.eks.token
  load_config_file       = false
  version                = "1.11.1"
}

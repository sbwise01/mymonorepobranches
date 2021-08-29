module "product2" {
  source = "git@github.com:sbwise01/myproduct2module.git?ref=release/1.0.0"

  providers = {
    kubernetes = kubernetes.eks
  }

  environment = var.environment
}

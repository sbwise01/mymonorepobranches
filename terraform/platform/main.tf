module "platform" {
  source = "git@github.com:sbwise01/myplatformmodule.git?ref=release/1.0.0"

  providers = {
    kubernetes.eks = kubernetes.eks
  }

  platform_name = var.platform_name
  zones         = var.availability_zones
}

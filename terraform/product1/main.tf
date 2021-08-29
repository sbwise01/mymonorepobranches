module "product1" {
  source = "git@github.com:sbwise01/myproduct1module.git?ref=release/1.0.0"

  providers = {
    kubernetes = kubernetes.eks
  }

  eks_oidc_provider_arn = data.terraform_remote_state.platform.outputs.eks_oidc_provider_arn
}

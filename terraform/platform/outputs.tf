output "eks_cluster_id" {
  value = module.platform.eks_cluster_id
}

output "eks_oidc_provider_arn" {
  value = module.platform.eks_oidc_provider_arn
}

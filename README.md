# mymonorepobranches
A Terraform monorepo which uses branches for environments

## Running Terraform
To run Terraform in a branch per environment repo like this, do the following

### Checkout branch
```
git checkout [dev|prod]
```

### Init
```
terraform init -backend-config [dev.backend.tfvars|prod.backend.tfvars]
```

### Plan
```
terraform plan -var-file [dev.tfvars|prod.tfvars] -out plan.out
```

### Apply
```
terraform apply plan.out
```

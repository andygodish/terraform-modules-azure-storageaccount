# Azure Storage Account

This module follows the Azure naming convention recommended by Microsoft, outlined in [this article](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming) with slight adjustments consistent with other modules in this space.

## Usage

```
module "storageaccount" {
  source = "github.com/hashicorp/examplegithub.com/andygodish/terraform-modules-azure-storageaccount.git?ref=v0.0.1"

  primary_location      = var.primary_location
  primary_location_abbr = var.primary_location_abbr

  project_group = var.project_group
  project_name = var.project_name
  project_env = var.project_env

  network_tiers = var.network_tiers

  tags = merge(var.tags, {})

  rg_name = dependency.resource_group.outputs.all_rg_names[0]
}
```

### Terragrunt

```
# terragrunt.hcl

terraform {
  source = "git::https://github.com/andygodish/terraform-modules-azure-storageaccount.git?ref=v0.0.1"
}

inputs = {
  primary_location = local.env.primary_location
  primary_location_abbr = local.env.primary_location_abbr

  project_group = local.env.project_group
  project_name = local.env.project_name
  project_env = local.env.project_env

  network_tiers = local.env.network_tiers

  tags = merge(local.env.env_tags, {})

  rg_name = dependency.resource_group.outputs.all_rg_names[0]
}
```



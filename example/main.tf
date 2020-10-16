module "azure_ad_sp" {
  source            = "git::https://github.com/0xdbe-terraform/terraform-azure-ad-service-principal.git?ref=v1.0.1"
  application_name  = "Hello World"
}

module "azure_ressource_group" {
  source       = "git::https://github.com/0xdbe-terraform/terraform-azure-resource-group.git?ref=v1.0.0"
  name         = "Hello World"
  location     = "eastus"
  contributors = [module.azure_ad_sp.service_principal_id]
}

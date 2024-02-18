module "servers" {
  source = "../../../module"

  rg_name           = var.rg_name
  location          = var.location
  tier              = var.tier
  replication_type  = var.replication_type
  kind              = var.kind
  access_tier       = var.access_tier
  enable_versioning = true
  retention_days    = 7
}

variable "rg_name" {
  type        = string
  description = "Name of The Resource Group"
}

variable "location" {
  type        = string
  default     = "centralindia"
  description = "Name of The Location"
}

variable "tier" {
  type        = string
  default     = "Standard"
  description = "Access Tier For SA"
}

variable "replication_type" {
  type        = string
  default     = "LRS"
  description = "Type of Redundancy"
}

variable "kind" {
  type        = string
  default     = "StorageV2"
  description = "Storage Account Type"
}

variable "access_tier" {
  type        = string
  default     = "TransactionOptimized"
  description = "Type of File Share"
}
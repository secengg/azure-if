variable "rg_name" {
    type        =   string
    description =   "Name of The Resource Group"      
}

variable "location" {
   type         = string
   default      = "centralindia"
   description  = "Name of The Location"
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
    default     = "StandardV2"
    description = "Storage Account Type"
}

variable "name" {
    type        = string
    description = "Name of File Share"
    default     = "myshare1"
}

variable "enable_versioning" {
  type      = bool
  description = "Whether Versioning Is Required Or Not" 
  default = false
}
variable "access_tier" {
    type        = string
    default     = "TransactionOptimized"
    description = "Type of File Share"
}

variable "retention_days" {
  type = string
  description = "No Of Days For Which Retention Of Blobs Is Required"
}
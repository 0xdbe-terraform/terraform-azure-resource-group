variable "name" {
  type        = string
  description = "The name of your project or your application using upper camel case (Example: HelloWorld)"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Resource location in Azure (default: 'eastus', less expensive location)"
}

variable "contributors" {
  type        = list(string)
  description = "An ID list of the Principal (User, Group or Service Principal) to assign the contributor role on this ressource group"
  default     = []
}
variable "name" {
  description = "vpc name"
}

variable "cidr" {
  description = "cidr block to assign to the vpc. e.g., 10.0.0.0/16"
}

variable "public_subnets" {
  description = "a list of public subnets in the vpc"
  default     = []
}

variable "private_subnets" {
  description = "a list of private subnets in the vpc"
  default     = []
}

variable "database_subnets" {
  type        = "list"
  description = "a list of database subnets in the vpc"
  default     = []
}

variable "elasticache_subnets" {
  type        = "list"
  description = "a list of elasticache subnets in the vpc"
  default     = []
}

variable "azs" {
  description = "a list of availability zones in the region mapped to the subnets"
  default     = []
}

variable "enable_dns_hostnames" {
  description = "should be true if you want to use private dns within the vpc"
  default     = false
}

variable "enable_dns_support" {
  description = "should be true if you want to use private dns within the cpv"
  default     = false
}

variable "enable_nat_gateway" {
  description = "should be true if you want to provision nat gateways for each of your private networks"
  default     = false
}

variable "map_public_ip_on_launch" {
  description = "should be false if you do not want to auto-assign public ip on launch"
  default     = true
}

variable "private_propagating_vgws" {
  description = "a list of vgws the private route table should propagate"
  default     = []
}

variable "public_propagating_vgws" {
  description = "A list of vgws the public route table should propagate"
  default     = []
}

variable "tags" {
  description = "a map of tags to add to all resources"
  default     = {}
}
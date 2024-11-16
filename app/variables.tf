variable "root_volume_size" {
  description = "Size of the root volume in GiB"
  type        = number
  default     = 10 # Set a sensible default, or leave unset
}

variable "size" {
  description = "Instance type or EBS volume size, depending on context"
  type        = number
  default     = 20 # Adjust according to your needs
}

variable "tag" {
  description = "Tags for the instance"
  type        = map(string)
  default     = {
    Name = "example-instance"
  }
}

variable "availability_zone" {
  description = "Availability Zone for the EBS volume"
  type        = string
}
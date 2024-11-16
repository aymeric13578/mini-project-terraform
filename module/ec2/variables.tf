variable "size" {
  type = string
  default = "t3.micro"
}

variable "tag" {
  type = map
  default = {
    Name = "My ec2"
  }
}

variable "root_volume_size" {
  description = "Size of the root EBS volume in GB"
  type        = number
}
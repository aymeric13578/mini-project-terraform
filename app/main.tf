module "ec2" {
  source = "../module/ec2"
  root_volume_size = var.root_volume_size
  
}

module "ebs" {
  source = "../module/ebs"
  availability_zone = var.availability_zone
  size = var.size 
}

module "elastic_ip" {
  source = "../module/elastic_ip"
  
}

module "security" {
  source = "../module/security"
  
}

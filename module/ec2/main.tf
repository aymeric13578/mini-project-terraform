data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.size

  #user_data = file("${path.root}/app/scripts/install-nginx.sh")
  user_data = file("${path.module}/../../app/scripts/install-nginx.sh")

  root_block_device {
    volume_size = var.root_volume_size
  }

  tags = var.tag
}
resource "aws_eip" "eip" {
  
    instance = var.instance
    
}
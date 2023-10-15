resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main01" {
  
  vpc_id     = aws_vpc.main.id
  cidr_block = var.vpc_cidr

  availability_zone = "ap-south-1a" 
  #tags = var.subnet_tags
}



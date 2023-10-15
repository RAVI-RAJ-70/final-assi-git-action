resource "aws_instance" "server01" {

  # Creating instance

  ami = var.ami

  instance_type = var.instance_type

  subnet_id = var.subnet_id

  tags = var.ec2_tags

  volume_tags = var.ec2_volume_tags

}
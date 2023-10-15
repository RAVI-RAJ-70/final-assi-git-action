

variable "ami" {
  type = string
  description = "ami id"
}
variable "instance_type" {
  type = string
  description = "instance_type"
}
variable "subnet_id" {
  type = string
  description = "subnet_id"
}


variable "ec2_tags" {
  type = map(string)
  description = "tags of instance"
  default = {
    Name        = "Raaz"
    owner       = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
}
variable "ec2_volume_tags" {
  type = map(string)
  description = "volume tags of instance"
  default = {
    name  = "Raaz"
    owner  = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
}
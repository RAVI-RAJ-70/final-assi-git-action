variable "Name" {
  type = map(object({
    ami = string
    instance_type = string

  }))
}



variable "ec2_tags" {
  type = map(string)
  description = "tags of instance"
  default = {
    Name        = "Raaz",
    owner       = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
}
variable "ec2_volume_tags" {
  type = map(string)
  description = "volume tags of instance"
  default = {
    Name  = "Raaz",
    owner  = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
}

variable "vpc_cidr" {
  type = string
}

variable "vpc_id" {
  type = string
  default = "vpc-0db9b000905eaca0e"
}


/* variable "subnet_tags" {
  type = map(string)
  description = "tags of bucket"
  default = {
    name = "Raaz",
    owner = "ravi.raj@cloudeq.com",
    
  } */

  
  

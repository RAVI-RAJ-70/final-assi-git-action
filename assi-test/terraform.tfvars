Name = {
  "Raaz01" = {
    ami           = "ami-067c21fb1979f0b27"
    instance_type = "t2.micro"
 
  }
  "Raaz02" = {
    ami           = "ami-067c21fb1979f0b27"
    instance_type = "t2.micro"
   
  }
}
  ec2_tags = {
    name = "Raaz"
    owner  = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
  ec2_volume_tags = {
    Name = "Raaz"
    owner  = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
  
  vpc_cidr =  "10.0.1.0/24"

 

  /* vpc_tags = {
    Name = "Raaz",
    owner = "ravi.raj@cloudeq.com",
    
  } */

    /* subnet_tags = {
    Name = "Raaz",
    owner = "ravi.raj@cloudeq.com",
   
  } */

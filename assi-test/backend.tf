terraform {
  backend "s3" {
    
    bucket = "ravi-batch-09"   #........Objects can be public
    key    = "raaz_ravi.tfstate"
    region = "ap-south-1"
  }
}

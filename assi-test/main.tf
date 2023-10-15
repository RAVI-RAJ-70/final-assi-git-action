module "server01" {
    source = "../assi-test/ec2"
    for_each = var.Name
    
    ami = each.value.ami
    instance_type = each.value.instance_type

    subnet_id = module.main01.subnet_output01
    
    ec2_tags = merge(var.ec2_tags, {name = each.key})
    ec2_volume_tags = merge(var.ec2_volume_tags, {name = each.key})
}

module "main01" {
  source = "../assi-test/network"
  #vpc_id = aws_vpc.main.id
  vpc_cidr =  var.vpc_cidr
  
  #vpc_tags = merge(var.vpc_tags, {name = var.vpc_cidr[count.index]})
 
}

/* module "main01" {
  source = "../assi-test/network"
  count = length(var.vpc_cidr)
  vpc_id = var.vpc_id
  vpc_cidr =  var.vpc_cidr[count.index]
  
  #vpc_tags = merge(var.vpc_tags, {name = var.vpc_cidr[count.index]})
 
} */

/* module "aws_subnet" {
  source = "../module_loop - Copy/network"
  count = length(var.vpc_cidr)
  vpc_id = aws_vpc.main02.id 
  vpc_cidr =  var.vpc_cidr
  #subnet_tags = merge(var.subnet_tags, {name = var.vpc_cidr[count.index]})
}


module "aws_vpc" {
  source = "../module_loop - Copy/network"
  count = length(var.vpc_cidr)
  vpc_id = aws_vpc.main02.id 
  vpc_cidr =  var.vpc_cidr
  #vpc_tags = merge(var.vpc_tags, {name = var.vpc_cidr[count.index]})
 
} */



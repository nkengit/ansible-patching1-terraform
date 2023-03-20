locals {
  aws_ec2 = [
    {
      ami           = var.ami[0]
      instance_type = var.instance_type[0]
    },
    {
      ami           = var.ami[1]
      instance_type = var.instance_type[1]
    },
    {
      ami           = var.ami[2]
      instance_type = var.instance_type[2]
    },
    {
      ami           = var.ami[3]
      instance_type = var.instance_type[3]
    }
  ]
}
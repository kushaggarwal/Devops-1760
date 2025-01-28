## Deploy EC2 instance using resources

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web1" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t3.small"

#   tags = {
#     Name = var.instance_name
#   }
# }

# Deploy Ec2 instance using Modules

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = var.instance_name
  instance_type          = "t2.micro"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = var.instance_name
  instance_type          = "t2.micro"
  providers = {
    aws = aws.west
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
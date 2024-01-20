resource "aws_vpc" "vpc_estudo_efs" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name      = "vpc_estudo_efs",
    Terraform = true
  }
}
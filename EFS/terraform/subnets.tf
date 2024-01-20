resource "aws_subnet" "subnet_estudo_efs_1a" {
  vpc_id            = aws_vpc.vpc_estudo_efs.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name      = "subnet_estudo_efs_1a",
    Terraform = true
  }
}

resource "aws_subnet" "subnet_estudo_efs_1b" {
  vpc_id            = aws_vpc.vpc_estudo_efs.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name      = "subnet_estudo_efs_1b",
    Terraform = true
  }
}

resource "aws_subnet" "subnet_estudo_efs_1c" {
  vpc_id            = aws_vpc.vpc_estudo_efs.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name      = "subnet_estudo_efs_1c",
    Terraform = true
  }
}
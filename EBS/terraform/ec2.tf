resource "aws_instance" "ebs_estudo_ec2" {
  ami               = "ami-0e9107ed11be76fde"
  availability_zone = "us-east-1c"
  instance_type     = "t2.micro"

  tags = {
    Name      = "ebs_estudo_ec2",
    Terraform = true
  }
}
resource "aws_efs_file_system" "efs_estudo" {
  creation_token = "efs_estudo"

  tags = {
    Name      = "efs_estudo",
    Terraform = true
  }
}
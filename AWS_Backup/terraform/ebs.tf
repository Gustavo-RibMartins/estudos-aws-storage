resource "aws_ebs_volume" "ebs_estudo_storage_aws_backup" {
  availability_zone = "us-east-1a"
  size              = 8
  tags = {
    Name   = "ebs_estudo_storage_aws_backup",
    Backup = true
  }
}
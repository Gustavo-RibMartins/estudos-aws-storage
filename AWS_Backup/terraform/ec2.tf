resource "aws_instance" "ecs_estudo_storage_aws_backup" {
  ami               = "ami-0e9107ed11be76fde"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name   = "ecs_estudo_storage_aws_backup",
    Backup = true
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs_estudo_storage_aws_backup.id
  instance_id = aws_instance.ecs_estudo_storage_aws_backup.id
}
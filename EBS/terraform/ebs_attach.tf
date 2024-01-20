resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs_estudo_2.id
  instance_id = aws_instance.ebs_estudo_ec2.id
}

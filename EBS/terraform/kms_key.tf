resource "aws_kms_key" "ebs_estudos_1b_key" {
  description             = "KMS do EBS de estudos 1b"
  deletion_window_in_days = 10

  tags = {
    Terraform = true,
    Name      = "ebs_estudos_1b_key"
  }
}
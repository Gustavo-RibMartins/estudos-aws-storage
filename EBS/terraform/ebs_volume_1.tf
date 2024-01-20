# Criacao de EBS descriptografado com base em um snapshot publico

resource "aws_ebs_volume" "ebs_estudo_1a" {
  availability_zone = "us-east-1a"
  size              = 10 # size in GB
  encrypted         = false
  final_snapshot    = false
  iops              = 3000
  type              = "gp3"
  throughput        = 200                      # MB/s
  snapshot_id       = "snap-046281ab24d756c50" # public snapshot

  tags = {
    Terraform = true,
    Name      = "ebs_estudo_1a"
  }
}

# Criacao de um EBS com criptografia KMS

resource "aws_ebs_volume" "ebs_estudo_1b" {
  availability_zone = "us-east-1b"
  size              = 20 # size in GB
  encrypted         = true
  kms_key_id        = aws_kms_key.ebs_estudos_1b_key.arn
  final_snapshot    = false
  iops              = 3000
  type              = "io2"

  tags = {
    Terraform = true,
    Name      = "ebs_estudo_1b"
  }
}
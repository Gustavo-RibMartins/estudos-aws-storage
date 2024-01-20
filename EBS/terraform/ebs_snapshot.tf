resource "aws_ebs_snapshot" "ebs_snapshot_1a" {
  volume_id    = aws_ebs_volume.ebs_estudo_1a.id
  description  = "Snapshot do volume ebs_estudo_1a"
  storage_tier = "standard"

  tags = {
    Name      = "snp_ebs_estudo_1a",
    Terraform = true
  }
}

resource "aws_ebs_snapshot" "ebs_snapshot_1b" {
  volume_id    = aws_ebs_volume.ebs_estudo_1b.id
  description  = "Snapshot do volume ebs_estudo_1b"
  storage_tier = "archive"

  tags = {
    Name      = "ebs_snapshot_1b",
    Terraform = true
  }
}

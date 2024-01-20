resource "aws_ebs_snapshot_copy" "ebs_snapshot_1a_copy" {
  source_snapshot_id = aws_ebs_snapshot.ebs_snapshot_1a.id
  source_region      = "us-east-1"

  tags = {
    Name      = "ebs_snapshot_1a_copy",
    Terraform = true
  }
}
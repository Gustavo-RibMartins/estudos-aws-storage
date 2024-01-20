resource "aws_s3_bucket" "estudo-storage-aws-backup-target" {
  bucket = "estudo-storage-aws-backup-target"

  tags = {
    Name      = "estudo-storage-aws-backup-target"
  }
}

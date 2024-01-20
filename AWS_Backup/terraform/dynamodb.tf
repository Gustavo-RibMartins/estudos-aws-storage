resource "aws_dynamodb_table" "tb_estudo_storage_aws_backup" {
  name           = "tb_estudo_storage_aws_backup"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "field1"
  range_key      = "field2"

  attribute {
    name = "field1"
    type = "S"
  }

  attribute {
    name = "field2"
    type = "S"
  }

  tags = {
    Name   = "tb_estudo_storage_aws_backup"
    Backup = true
  }
}
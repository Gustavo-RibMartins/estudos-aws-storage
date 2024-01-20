resource "aws_efs_mount_target" "eni_estudo_efs_1a" {
  file_system_id = aws_efs_file_system.efs_estudo.id
  subnet_id      = aws_subnet.subnet_estudo_efs_1a.id
}

resource "aws_efs_mount_target" "eni_estudo_efs_1b" {
  file_system_id = aws_efs_file_system.efs_estudo.id
  subnet_id      = aws_subnet.subnet_estudo_efs_1b.id
}

resource "aws_efs_mount_target" "eni_estudo_efs_1c" {
  file_system_id = aws_efs_file_system.efs_estudo.id
  subnet_id      = aws_subnet.subnet_estudo_efs_1c.id
}
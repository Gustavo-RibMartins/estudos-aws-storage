resource "aws_s3_bucket" "estudo-storage-aws-backup" {
  bucket = "estudo-storage-aws-backup"

  tags = {
    Name      = "estudo-storage-aws-backup"
    Terraform = true,
    Backup    = true
  }
}

resource "aws_s3_object" "folder1_object1" {
  bucket = aws_s3_bucket.estudo-storage-aws-backup.id
  key    = "folder1/object1.txt"
  tags = {
    teraform = true,
    Backup   = true
  }
  source = "C:/Users/gusta/OneDrive/Imagens/Objeto.txt"
}

resource "aws_s3_object" "folder1_object2" {
  bucket = aws_s3_bucket.estudo-storage-aws-backup.id
  key    = "folder1/object2.txt"
  tags = {
    teraform = true,
    Backup   = true
  }
  source = "C:/Users/gusta/OneDrive/Imagens/Objeto.txt"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.estudo-storage-aws-backup.id
  key    = "object.txt"
  tags = {
    teraform = true,
    Backup   = true
  }
  source = "C:/Users/gusta/OneDrive/Imagens/Objeto.txt"
}

# Este backup sera desprezado por ter tag Backup=false no bukcet ou objeto

resource "aws_s3_bucket" "estudo-storage-aws-not-backup" {
  bucket = "estudo-storage-aws-not-backup"

  tags = {
    Name      = "estudo-storage-aws-not-backup"
    Terraform = true,
    Backup    = false
  }
}

resource "aws_s3_object" "object-not-backup1" {
  bucket = aws_s3_bucket.estudo-storage-aws-backup.id
  key    = "object-not-backup1.txt"
  tags = {
    teraform = true,
    Backup   = false
  }
  source = "C:/Users/gusta/OneDrive/Imagens/Objeto.txt"
}

resource "aws_s3_object" "object-not-backup2" {
  bucket = aws_s3_bucket.estudo-storage-aws-not-backup.id
  key    = "object-not-backup2.txt"
  tags = {
    teraform = true,
    Backup   = true
  }
  source = "C:/Users/gusta/OneDrive/Imagens/Objeto.txt"
}

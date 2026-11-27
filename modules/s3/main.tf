resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.bucket_name}-nov-2004-new"

  tags = {
    Name = "${var.project_name}-bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

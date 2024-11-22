resource "aws_s3_bucket" "b" {
  bucket = "devopsb28testingmetaargs001"

  tags = {
    Name        = "devopsb28testingmetaargs001"
    Environment = "Dev"
  }
  lifecycle {
    create_before_destroy = true
  }
}
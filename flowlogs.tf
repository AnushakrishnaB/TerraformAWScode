resource "aws_flow_log" "example" {
  log_destination      = aws_s3_bucket.devopsb28vpcflowlogs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.default.id
}

resource "aws_s3_bucket" "devopsb28vpcflowlogs" {
  bucket = "devopsb28vpcflowlogs"
  depends_on = [
    aws_s3_bucket.devopsb28vpc1
  ]
}

resource "aws_s3_bucket" "devopsb28vpc1" {
  bucket = "devopsb28vpc1"
  depends_on = [
    aws_s3_bucket.devopsb28vpc2
  ]
}

resource "aws_s3_bucket" "devopsb28vpc2" {
  bucket = "devopsb28vpc2"
  depends_on = [
    aws_s3_bucket.devopsb28vpc3
  ]
}

resource "aws_s3_bucket" "devopsb28vpc3" {
  bucket = "devopsb28vpc3"
}
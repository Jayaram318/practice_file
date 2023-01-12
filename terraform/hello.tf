provider "aws" {
  region = "us-west-2"
  access_key = "AKIAYIML2ERNCJQWSDP2"
  secret_key = "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"
}
resource "aws_s3_bucket" "b1" {
  bucket = "jan2312"
}
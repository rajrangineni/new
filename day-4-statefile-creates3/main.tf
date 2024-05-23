resource "aws_s3_bucket" "remote" {
    bucket = "statefile-store2"
    
    }
   # resource "aws_s3_bucket_acl" "example" {
   # bucket = aws_s3_bucket.remote.id
   #  ac1   = "private"
   # }

      
 resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.remote.id
  versioning_configuration {
    status = "Enabled"
  }
}
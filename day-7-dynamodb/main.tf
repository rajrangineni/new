resource "aws_s3_bucket" "remote" {
    bucket = "state-remote-store-nikki-pracice"

  
}

resource "aws_s3_bucket_versioning" "dynamo" {
    bucket = aws_s3_bucket.remote.id
    versioning_configuration {
      status = "Enabled"
    }

  
}
  
  #DynamoDB creation for locking process
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-dynamo123qwe"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}
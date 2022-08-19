terraform {
  backend "s3" {
    bucket         = "YOUR_BUCKET_NAME"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "YOUR_TABLE_NAME"
  }
}   
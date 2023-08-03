terraform {
  backend "s3"{
    bucket = "tf-state-bucket"
    key = "mykey"
    region = "ap-south-1"
    dynamodb_table = "test-dynamodb-table"
  }
}
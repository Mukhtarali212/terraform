terraform {
  backend "s3"{
    bucket = "tf-state-bucket"
    key = "Centos"
    region = "ap-south-1"
    dynamodb_table = "test-dynamodb-table"
  }
}
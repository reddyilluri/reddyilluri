provider "aws" {
    region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "appiss3s"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "my-dynamodb-table"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0d2986f2e8c0f7d01"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

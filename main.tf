terraform {

  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
}

resource "aws_instance" "example_instance2" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "terraform-burket"
  acl    = "private"
}

resource "aws_dynamodb_table" "example_table" {
  name           = "terraform-burket-table"
  hash_key       = "id"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "id"
    type = "S"
  }
}









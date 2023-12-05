terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version =  "5.16.1"
}
}
}


provider "aws" {
        region = "us-east-1"
}


resource "aws_s3_bucket" "backend-bucket" {
        bucket = "batch4-remote-backend-bucket"
}

resource "aws_dynamodb_table" "backend-demo-table" {
        name = "batch4-remote-backend-table"
        billing_mode = "PAY_PER_REQUEST"
        hash_key = "LockId"


        attribute {
         name = "LockId"
         type = "S"
}

}


ubuntu@ip-172-31-35-106:~/terraform-remote$ clear

ubuntu@ip-172-31-35-106:~/terraform-remote$ ls
backend_infra.tf  terraform.tfstate
ubuntu@ip-172-31-35-106:~/terraform-remote$ cat backend_infra.tf
terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version =  "5.16.1"
}
}
}


provider "aws" {
        region = "us-east-1"
}


resource "aws_s3_bucket" "backend-bucket" {
        bucket = "batch4-remote-backend-bucket"
}

resource "aws_dynamodb_table" "backend-demo-table" {
        name = "batch4-remote-backend-table"
        billing_mode = "PAY_PER_REQUEST"
        hash_key = "LockId"


        attribute {
         name = "LockId"
         type = "S"
}

}

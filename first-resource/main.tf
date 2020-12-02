provider "aws" {
    region = "us-east-1"
    access_key = "XXXXXXX"
    secret_key = "XXXXXXX"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
}
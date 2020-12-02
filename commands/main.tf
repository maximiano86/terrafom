provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "myvpc2" {
  cidr_block = "10.0.0.0/16"
}


# terraform fmt
# terraform taint/untaint <resource> aws_vpc.myvpc2
# terraform import <name> <id>
# terraform workspace [list| new <name> | show]
# terraform state list
# terraform state pull
# terraform state mv aws_vpc.myvpc aws_vpc.mvmyvpc
# terraform state rm aws_vpc.myvpc

# DEBUG
# export TF_LOG=TRACE most verbose log

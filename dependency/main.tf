ami-09e7aedfda734b173

provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "myec2" {
    ami = "ami-09e7aedfda734b173"
    instance_type = "t2.micro"

    tags = {
        Name = "Web Server"
    }

    depends_on = [aws_instance.myec2db]

}

resource "aws_instance" "myec2db" {
    ami = "ami-09e7aedfda734b173"
    instance_type = "t2.micro"

    tags = {
        Name = "Web Server"
    }

}

data "aws_instance" "dbserach" {
    filter {
        name = "tag:Name"
        values = ["DB Server"]
    }
}

output "dbservers" {
    value data.aws_instance.dbserach.availability_zone
}
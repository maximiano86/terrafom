provider "aws" {
    region = "us-east-1"
    access_key = "XXXXXXX"
    secret_key = "XXXXXXX"
}

variable "clustername" {
    type = string
    default = "mycluster"
}

variable "sshport" {
    type = number
    default = 22
}

variable "enable" {
    default = true
}

variable "mylist" {
    type = list(string)
    default = ["val1", "val2"]
}

variable "mymap" {
    type = mymap
    default = {
        key1 = "val1"
        key2 = "val2"
    }
}

variable "inputname" {
    type = string
    description = "Set the name of the cluster"
}

variable "mytuple" {
    type = tuple([string, number, string])
    default = ["cat", 1, "dog"]
}

variable "myobject" {
    type = object({name = string, port = list(number)})
    default = {
        name = "Max"
        port = [22. 25. 80]
    }
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        #Name = var.clustername
        #Name = var.mylist[0]
        #Name = var.mymap["key1"]
        Name = var.inputname
    }
}

#print output value resourcetype.name.id
output "myoutput" {
    value = aws_vpc.clustername.id
}
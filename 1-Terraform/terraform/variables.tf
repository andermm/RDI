variable "ami_id" {
    default = "ami-123456"
}

variable "environment" {
    default = "dev"
}

variable "instance_type" {
    default = "i3.micro"
}

variable "ssh_cidr" {
    type =  list(string)
    default = ["10.0.0.0/16"]
}

variable "tags" {
    type = map(string)
    default = {
        ApplicationID       = "APP1234567"
        Description         = "Test Instance"
        Environment         = "DEV"
        GBL                 = "123456789"
        Owner               = "MANAGER@test.com"
        Name                = "US-EAST-DEV-US-TESTAPP"
    }
}

variable "vpc_id" {
    type=string
    default = "vpc-12345678"
}

variable "engine" {
    type=string
    default= "mysql"
}

variable "engine_version" {
    type=string
    default= "5.7"
} 

variable "instance_class" {
    type=string
    default= "db.t3.micro"
}

variable "name"  {
    type=string
    default= "mydb"
} 

variable "username" {
    type=string
    default= "foo"
}  

variable "password" {
    type=string
    default= "foobarbaz"
}

variable "port" {
    type=string
    default= "3306"
} 

variable "parameter_group_name" {
    type=string
    default= "default.mysql5.7"
}
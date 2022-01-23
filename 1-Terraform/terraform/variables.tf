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
    default = "vpc-12345678"
}
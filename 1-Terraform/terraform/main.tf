resource "aws_instance" "test_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
}


resource "aws_security_group" "test_instance_sg" {
  name        = "Test-Instance"
  description = "Allow SSH traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  max_allocated_storage = 100
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.name
  username             = var.username
  password             = var.password
  port                 = var.port     
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = true
}

resource "aws_security_group" "rds_sg" {
  name = "RDS-SG"

  description = "RDS (terraform-managed)"
  vpc_id      = var.vpc_id

  # Only MySQL in
  ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr
  }

  # Allow all outbound traffic.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

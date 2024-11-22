data "aws_vpc" "awsb28-vpc" {
  id = "vpc-0eac6d4d55868caa8"
}

data "aws_subnet" "awsb28-subnet-1" {
  id = "subnet-0d124b5eb12011584"
}

data "aws_security_group" "awsb28-sg" {
  id = "sg-0664fad55261dd1fa"
}

resource "aws_instance" "awsb28-web-1" {
  ami                         = var.imagename
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  subnet_id                   = data.aws_subnet.awsb28-subnet-1.id
  vpc_security_group_ids      = ["${data.aws_security_group.awsb28-sg.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "DevOpsB28-ShellScripting-2"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  lifecycle {
    prevent_destroy = false
    ignore_changes  = [tags]
  }
}



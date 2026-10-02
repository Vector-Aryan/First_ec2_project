

resource "aws_security_group" "demo_sg" {
  name        = "first_sg"
  description = "Allow ssh and http"
  ingress {
    from_port   = 80
    protocol    = "TCP"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow http traffic"
  }
  ingress {
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "TCP"
    description = "Allow SSH traffic"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "ALlow all traffic"
  }
}

resource "aws_instance" "web" {
  instance_type          = var.aws_instance_type
  ami                    = var.aws_ami
  key_name               = var.aws_key
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  subnet_id              = "subnet-0e4dd85995642b102"
  user_data              = file("nginx.sh")
  tags = {
    Name = "First_ec2"
  }
}
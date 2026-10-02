output "aws_public_ip" {
  value = aws_instance.web.public_ip
}

output "aws_private_ip" {
  value = aws_instance.web.private_ip
}
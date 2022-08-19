output "public_ip" {
  value = aws_instance.web.public_ip
}

output "http_url" {
  value = "http://${aws_instance.web.public_ip}:80"
}
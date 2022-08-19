resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instnace_profile
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.websg.id]
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")
  root_block_device {
    volume_type           = "gp2"
    volume_size           = "10"
    delete_on_termination = true
  }
  tags = {
    Name = var.Name
  }
}
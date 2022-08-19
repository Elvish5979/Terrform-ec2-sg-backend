resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "instanceKey" {
  key_name   = var.key_name
  public_key = tls_private_key.key.public_key_openssh

}

resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.instanceKey.key_name}.pem"
  content  = tls_private_key.key.private_key_pem
}
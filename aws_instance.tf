resource "aws_instance" "bia_dev" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t3.micro"
  tags = {
    Name        = var.instance_name
    Environment = "development"
  }
  root_block_device {
    volume_size = 12
  }
  vpc_security_group_ids = [aws_security_group.bia_dev.id]
  subnet_id = local.subnet_zona_a_id
  //associate_public_ip_address = true
  ipv6_address_count = 1
  iam_instance_profile   = aws_iam_instance_profile.role_acesso_ssm.name
  key_name = "lab-terraform-key-pair"
  user_data              = file("userdata_biadev.sh")
}

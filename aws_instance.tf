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
  iam_instance_profile   = aws_iam_instance_profile.role_acesso_ssm.name
  user_data              = file("userdata_biadev.sh")
}

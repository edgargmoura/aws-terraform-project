# Instances Outputs
output "aws_instance_name" {
  description = "Instance name"
  value       = aws_instance.bia-dev.tags["Name"]
}

output "aws_instance_id" {
  description = "Instance id"
  value       = aws_instance.bia-dev.id
}

output "aws_instance_type" {
  description = "Instance type"
  value       = aws_instance.bia-dev.instance_type
}

output "aws_instance_public_ip" {
    description = "Instance public IP address"
    value = aws_instance.bia-dev.public_ip
}

output "aws_instance_private_ip" {
    description = "Private IP address"
    value = aws_instance.bia-dev.private_ip
}

#Security Groups Outputs

output "aws_security_group_name" {
  description = "security group name"
  value       = aws_security_group.bia_dev.name
}
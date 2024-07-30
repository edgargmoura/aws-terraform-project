# Instances Outputs
output "aws_instance_name" {
  description = "Instance name"
  value       = aws_instance.bia_dev.tags["Name"]
}

output "aws_instance_id" {
  description = "Instance id"
  value       = aws_instance.bia_dev.id
}

output "aws_instance_type" {
  description = "Instance type"
  value       = aws_instance.bia_dev.instance_type
}

output "aws_instance_public_ip" {
  description = "Instance public IP address"
  value       = aws_instance.bia_dev.public_ip
}

output "aws_instance_private_ip" {
  description = "Private IP address"
  value       = aws_instance.bia_dev.private_ip
}

#Security Groups Outputs

output "aws_security_group_name" {
  description = "security group name"
  value       = aws_security_group.bia_dev.name
}

output "aws_iam_role_name" {
  description = "IAM role name"
  value       = aws_iam_role.role_acesso_ssm.id
}

output "aws_db_instance_name" {
  description = "DB Instance name"
  value       = aws_db_instance.bia_db.id
}

output "rds_endpoint" {
  description = "DB Instance Endpoint"
  value       = aws_db_instance.bia_db.endpoint
}

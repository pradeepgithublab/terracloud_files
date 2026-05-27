# Define Output Values

# Attribute Reference
##Define Public IP

output "Public_IP" {
  description = "Get the public IP of Ec2 instance"
  value       = aws_instance.mymachine.*.public_ip

}
#Define Public DNs

output "Public_DNS" {
  description = "Get the public URL of Ec2 isntance"
  value       = aws_instance.mymachine.*.public_dns

}
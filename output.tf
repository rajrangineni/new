output "id" {
    value = aws_instance.name.public_ip
    description = "shoe in the ec2 instance"
  
}
output "dns" {
    value = aws_instance.name.public_dns
    description = "show in the ec2 instance"
  
}
output "private_ip" {
    value = aws_instance.name.private_ip
    description = "value"
    sensitive = true
  
}
output "public_ip" {
  value = [for i in aws_instance.ansible : i.public_ip[*]]
}

output "private_ip" {
  value = [for i in aws_instance.ansible : i.private_ip[*]]
}
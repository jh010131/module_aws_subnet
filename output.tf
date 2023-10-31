output "pub_subnet_id" {
  value = aws_subnet.terra_pub_subnet.id
  description = "생성된 Subnet ID 입니다."
}
# # Create public subnet
# resource "aws_subnet" "terra_pub_subnet" {
#   count      = 2
#   vpc_id     = aws_vpc.terra_vpc.id
#   cidr_block = "10.0.${count.index}.0/24"
#   # 짝수 번호는 가용영역 a로, 홀수 번호는 가용영역 b로 설정
#   availability_zone       = "${var.aws_region}${count.index % 2 == 0 ? "a" : "b"}"
#   map_public_ip_on_launch = true

#   tags = {
#     Name     = "terra_pub_subnet_14${count.index + 1}"
#     createBY = "terraform"
#   }
# }
resource "aws_subnet" "terra_pub_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  availability_zone       = "ap-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name     = "terra_pub_subnet_14"
    createBY = "terraform"
  }
}

# # Create private subnet
# resource "aws_subnet" "terra_pri_subnet" {
#   count      = 2
#   vpc_id     = aws_vpc.terra_vpc.id
#   cidr_block = "10.0.${count.index + 2}.0/24"
#   # 짝수 번호는 가용영역 a로, 홀수 번호는 가용영역 b로 설정
#   availability_zone       = "${var.aws_region}${count.index % 2 == 0 ? "a" : "b"}"
#   map_public_ip_on_launch = false

#   tags = {
#     Name     = "terra_pri_subnet_14${count.index + 3}"
#     createBY = "terraform"
#   }
# }
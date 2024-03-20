output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "cidr_range" {
  value = aws_vpc.my_vpc.cidr_block
}
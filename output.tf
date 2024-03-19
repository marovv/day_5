output "vpc_id" {
  value = aws_vpc.my_vpc
}

output "cidr_range" {
  value = aws_vpc.my_vpc.cidr_block
}
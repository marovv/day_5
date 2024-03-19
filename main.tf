# resource "aws_instance" "web" {
#   ami           = var.myami
#   instance_type = var.myinfo.type1

#   tags = {
#     Name = "MY-${var.myinfo.name1}"
#   }
# }

# resource "aws_instance" "web1" {
#   ami           = var.myami
#   instance_type = var.myinfo.type2

#   tags = {
#     Name = "MY-${var.myinfo.name2}"
#   }
# }

# resource "aws_instance" "web2" {
#   ami           = var.myami
#   instance_type = var.myinfo.type3

#   tags = {
#     Name = "MY-${var.myinfo.name3}"
#   }
# }


# resource "aws_instance" "web" {
#   ami           = "ami-0f403e3180720dd7e"
#   instance_type = "t2.micro"
#   count = 5

#   tags = {
#     Name = "Hello-Underworld-${count.index}"
#   }
# }

# resource "aws_eip" "eip" {
#   count = 5
# }

# resource "aws_eip_association" "eip_assoc" {
#   instance_id   = aws_instance.web[count.index].id
#   allocation_id = aws_eip.eip[count.index].id
#   count = 5
# }

# resource "aws_instance" "web" {
#   for_each = var.myinfo
#   ami           = var.myami
#   instance_type = each.value

#   tags = {
#     Name = "Hello-Underworld-${each.key}"
#   }
# }

# resource "aws_instance" "web" {
#   for_each = toset(var.myinfo)
#   ami           = var.myami
#   instance_type = each.key

#   tags = {
#     Name = "Hello-Underworld"
#   }
# }

resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr
  instance_tenancy = var.tenancy
  tags = {
    Name = var.tag_name
    }
}
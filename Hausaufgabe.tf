# #   i want you to create one RedHat virtual machine on which we can do ssh from our machine
# #     VPC- SUBNET - NIC - EIP - PUB_key _ EC2 - SECURITY-GRP -> 22, 80 -- inboud

# # Create a VPC
# resource "aws_vpc" "hausaufgabe_vpc" {
#     cidr_block = "10.0.0.0/16"
# }

# # Create a Subnet
# resource "aws_subnet" "ha_subnet" {
#     vpc_id = "${aws_vpc.hausaufgabe_vpc.id}"
#     cidr_block = "10.0.1.0/24"
#     availability_zone = "us-east-1c"
    
# }

# # Create security group and bi-dir rules for 80 and 22 ports
# resource "aws_security_group" "hausaufgabe_sg"{ 
#    vpc_id = "${aws_vpc.hausaufgabe_vpc.id}"
#    name = "Hausaufgabe_SecurityGroup"
   
#   ingress {
#   cidr_blocks  = ["0.0.0.0/0"]
#   from_port   = 80
#   protocol = "tcp"
#   to_port     = 80
#   }
  
# ingress {
#   cidr_blocks  = ["0.0.0.0/0"]
#   from_port   = 22
#   protocol = "tcp"
#   to_port     = 22
#   }

# egress {
#  cidr_blocks  = ["0.0.0.0/0"]
#   from_port   = 22
#   protocol = "tcp"
#   to_port     = 22   
# }

# # egress {
# #  cidr_blocks  = ["0.0.0.0/0"]
# #   from_port   = 80
# #   protocol = "tcp"
# #   to_port     = 80   
# # }
#   } 

# resource "aws_key_pair" "hausaufgabe_keys" {
#   key_name = "hausaufgabe_key"
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChhPu2JjcahQW366adqj0A3oGoYI8iZFr8CadYJ0cq4JQFnodL8lE77T9uBiTGAFhw2yGgTyKqwAuaqt39jD67sWNo5582FsE8dq1dJR+T8NLKPjbIlD3FPTVdm+rPiqUZmgU+5Di+HZZOpaGaxok81nsc2Z1q7wfSbZNFMJPTB0QxQgbp9kAGcDWHB8dpQP4HAtnMvJiayaIEEHO9/yKd7PhGDqUgZYXI64J1SKYJpwc0lsveACRGE6KbAHuMLbhZmqMN+VMB+6qXoIAS08IMQfhup+4W+/ujP6UN0kTOs5jkwTtmrCwtr6njyzOKY7Av7rpemDaQ4H+CgW2Wisfp rsa-key-20240318"
# }

# #Launch instance
# resource "aws_instance" "hausaufgabe_ec2" {
#   ami           = "ami-0fe630eb857a6ec83"
#   instance_type = "t2.micro"
#   subnet_id = "${aws_subnet.ha_subnet.id}"
#   key_name = aws_key_pair.hausaufgabe_keys.key_name
#   vpc_security_group_ids = [aws_security_group.hausaufgabe_sg.id]

#   tags = {
#     Name = "HelloUnderworld"
#     }
# }
# #create EIP and assign it to the instance
# resource "aws_eip" "hausaufgabe_eip" {
#   instance = aws_instance.hausaufgabe_ec2.id
# }

# #create InternetGW
# resource "aws_internet_gateway" "hausaufgabe_gw" {
#   vpc_id = "${aws_vpc.hausaufgabe_vpc.id}"
# }
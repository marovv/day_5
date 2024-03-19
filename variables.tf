# variable "myami" {
#     default = "ami-0f403e3180720dd7e"
#     type = string
#     description = "This is the ami -id for instance"
  
# }

# variable "mysize" {
#     type = list(any)
#     default = [ "t2.micro", "t3.micro", "t2.nano" ]
  
# }

# variable "myami" {
#     default = "ami-0f403e3180720dd7e"
#     type = string
#     description = "This is the ami -id for instance"
  
# }
# variable "myinfo" {
#     type = map(any)
#     default = {
#       name1 = "new1"
#       type1 = "t2.small"
#       name2 = "new2"
#       type2 = "t2.micro"
#       name3 = "new3"
#       type3 = "t3.small"
#     }
  
# }

# variable "myami" {
#     default = "ami-0f403e3180720dd7e"
#     type = string
#     description = "This is the ami -id for instance"
  
# }

# variable "myinfo" {
#     type = map(any)
#     default = {
#       new1 = "t2.small"
#       new2 = "t2.micro"
#       new3 = "t3.small"
#       new4 = "t3.small"
#       new5 = "t2.small"
#     }
# }

# variable "myami" {
#     default = "ami-0f403e3180720dd7e"
#     type = string
#     description = "This is the ami -id for instance"
  
# }

# variable "myinfo" {
#     type = list(any)
#     default = [ "t2.small", "t3.small", "t3.micro", "t2.small" ]
   
# }

variable "cidr" {
  type = string
}
variable "tenancy" {
  type = string
  default = "default"
}
variable "tag_name" {
  type = string
}
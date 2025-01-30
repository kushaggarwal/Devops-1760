variable "ami" {
    type = string
    default = "ami-01bc990364452ab3e"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  description = "Value for the name tag to identify the instance"
  type = string
  default = "Sample instance"
}
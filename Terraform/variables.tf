variable "aws_access_key" {
  type = string
  description = "AWS Account Access Key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS Account Secret Key"
}

variable "instance_name" {
  type = string
  description = "Instance Name"
  default = "TestInstance002"
}
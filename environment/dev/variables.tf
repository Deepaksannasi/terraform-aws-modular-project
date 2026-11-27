variable "aws_region"{
  type = string
  default = "ap-south-1"
}

variable "project_name" {
  type = string
  default = "terraform"
}

variable "ami_id" {
  type = string 
  default = "ami-0593d733c2fc5bd2e"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "vpc_cidr" {
  type = string 
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type = string 
  default = "10.0.1.0/24"
}

variable "tenancy" {
  type = string 
  default = "default"
}

variable "bucket_name" {
  type = string 
  default = "my-bucket"
}

variable "iam_username" {
  type = string 
  default = "iam-user"
}
variable "policy_arn" {
  type = list(string)
  default = [
  "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
  "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
  "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
]
}

variable "security_group_name" {
  type = string
  default = "pub-sg"
}


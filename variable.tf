variable "aws_region" {
    default     = "ap-south-1" 
}

variable "access_key" {
    default = ""
}

variable "secret_key" {
    default = ""
}
variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "Centos" 
}

variable "instance_type" { 
    default     =  "t2.micro" 
}

variable "security_group" { 
    default     = "test-sgroup-" 
}

variable "tag_name" { 
    default     = "my-ec2-instance" 
} 
variable "ami_id" { 
    default     = "ami-0f5ee92e2d63afc18" 
}
variable "versioning" {
    type        = bool
    default     = true
}
variable "acl" {
    type        = string
    default     = "private"
}
variable "bucket_prefix" {
    type        = string
    default     = "my-s3bucket-"
}
variable "tags" {
    type        = map
    default     = {
    environment = "DEV"
    terraform   = "true"
    }
}
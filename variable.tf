# variable file to pass different values
variable "instance_count" {
    type = number
    default = 1
   }

variable "instance_type" {
    type = string
    default = "t2.micro"
   }

variable "keyname" {
    type = string
    default = "DevOps"
}

variable "enable_security_grp" {
    type = string
    default = true
}
variable "enable_ec2" {
    type = string
    default = false
   }
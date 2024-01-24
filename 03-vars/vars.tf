variable "sample" {
  default = 300
}


variable "sample2" {
  default = "arjun"
}

output "sample" {
  value = var.sample
}

output "sample2" {
  value = var.sample2
}

## Sometimes if varaible/any reference with the combination of some other string then we have to access those in ${}

output "sample_txt" {
  value = "value of sample - ${var.sample}"
}


# Variable Data types
# 1. string
# 2. number
# 3. Boolean

# Variable Types
# In Ansible - 1. Plain Key, Value, 2. List 3. Map/Dict

# In Terraform
# 1. Plain
# 2. List
# 3. Map

## Plain
variable "course" {
  default = "DevOps Training"
}

# List
variable "courses" {
  default = [
    "DevOps",
    "AWS",
    "Python"
  ]
}

## Map
variable "course_details" {
  default = {
    DevOps = {
      name     = "DevOps"
      timing   = "10am"
      duration = 90
    }
    AWS = {
      name     = "AWS"
      timing   = "11am"
      duration = 30
    }
  }
}

output "course" {
  value = var.course
}
output "courses" {
  value = var.courses[2]
}

output "course_details" {
  value = var.course_details["AWS"]
}

variable "env" {}

output "env" {
  value = var.env
}
variable "sample" {
  default = 300
}


variable "sample2" {
  name = arjun
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
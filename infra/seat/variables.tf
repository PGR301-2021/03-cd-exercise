variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "ami" {
  type = string
}

variable "student_id" {
  type = string
}


variable "student_keybase" {
  type        = string
  description = "The Keybase user of the student"
}
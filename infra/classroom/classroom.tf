module "students" {
  source          = "../seat"
  ami             = "ami-0cb2d4aa3008821f4"
  for_each        = var.students
  student_id      = each.key
  student_keybase = each.value.keybase_id
}

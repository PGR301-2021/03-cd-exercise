module "students" {
  source = "../seat"
  ami = "student-computer-cd-exercise-20210912193710"
  for_each = var.students
  student_id = each.key
  student_keybase = each.value.keybase_id
}
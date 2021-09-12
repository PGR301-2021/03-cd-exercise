source "amazon-ebs" "student-computer" {
  region =  "eu-north-1"
  source_ami =  "ami-0fce25857d9f86070"
  instance_type =  "t3.micro"
  ami_name =  "student-computer-cd-exercise"
  ssh_username = "ec2-user"
}

build {
  sources = [
    "source.amazon-ebs.basic-example"
  ]

  provisioner "file" {
    source = "packer/boto3_example.py"
    destination = "/home/ec2-user/boto3_example.py"
  }
}
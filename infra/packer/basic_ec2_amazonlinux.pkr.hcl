locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }

source "amazon-ebs" "student-computer" {
  region =  "eu-north-1"
  source_ami =  "ami-0f0b4cb72cf3eadf3"
  instance_type =  "t3.micro"
  ami_name =  "student-computer-cd-exercise-${local.timestamp}"
  ssh_username = "ec2-user"
}

build {
  sources = [
    "source.amazon-ebs.student-computer"
  ]

  provisioner "shell" {
    script = "infra/packer/server_setup.sh"
  }

  provisioner "file" {
    source = "infra/packer/boto3_example.py"
    destination = "/home/ec2-user/boto3_example.py"
  }
}
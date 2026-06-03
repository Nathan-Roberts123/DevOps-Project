data "aws_ami" "amazon-linux" {
  most_recent = true
  owners = ["137112412989"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = "ami-00e801948462f718a"
  instance_type = "t2.micro"
  key_name = "docker"
  subnet_id = "subnet-037e65818dc0975b4"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}

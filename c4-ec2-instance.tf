# Create EC2 Instance
resource "aws_instance" "mymachine" {

  ami                    = data.aws_ami.myawslinuxami.id
  instance_type          = var.ec2_instance_type
  key_name               = "loginkey"
  count                  = 1
  vpc_security_group_ids = [aws_security_group.vpc-http.id, aws_security_group.vpc-ssh.id]
  user_data              = file("apache-install.sh")

  tags = {

    "ENV" = "Terraform-cloud-${count.index}"
  }
}
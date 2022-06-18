resource "aws_instance" "Terraform-Server-Projeto1" {
  ami = "ami-02ccb28830b645a41"
  key_name = "terraform-aws"
  instance_type = "t2.micro"
   tags = {
      Name = "Terraform-Server-Ec2"
    }
    security_groups = [data.aws_security_group.securityssh.id]
    subnet_id              = data.aws_subnet.subnetaula.id
    associate_public_ip_address = "true"
  
}

resource "aws_instance" "Terraform-Server-Projeto1" {
  ami = "ami-02ccb28830b645a41"
   key_name = "terraform-aws"
  instance_type = "t2.micro"
   tags = {
      Name = "Terraform-Server-Ec2"
    }
    vpc_security_group_ids = ["sg-067bc9a149e293431"]
    subnet_id              = "subnet-0d165614d37d93efd"
    associate_public_ip_address = "true"
  
}
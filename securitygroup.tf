resource "aws_security_group" "ssh_access_projeto1" {
  name        = "ssh_access_projeto1"
  description = "liberar acesso ssh"
  vpc_id      =  module.vpc.vpc_id   # o codigo da aula1 nao funcionou porem nessa linha é onde linkamos todo o codigo de security group na vpc


  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "ssh_access_projeto1"
  }
}
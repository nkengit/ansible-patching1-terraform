resource "aws_instance" "ansible" {
  for_each = {
    for index, i in local.aws_ec2 :
    i.ami => i
  }
  ami                    = each.key
  instance_type          = each.value.instance_type
  key_name               = "test-key"
  vpc_security_group_ids = [aws_security_group.team4_ssh.id]
  user_data              = file("./entry-script.sh") # running the script on the EC2 instance at boot

  tags = {
    Name = "ansible-${each.key + 1}"
    node = "node${each.key + 1}"
  }
}

data "template_file" "user_data" {
  template = file("entry-script.sh")
}
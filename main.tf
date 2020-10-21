provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "webapp" {
    count = var.enable_ec2 ? var.instance_count : 0
    ami = data.aws_ami.amznlx.id
    instance_type = var.instance_type
    key_name = var.keyname
    //vpc_security_group_ids = [aws_security_group.allow_tls.id]
    user_data = file("userdata.sh")



    tags = {
        Name = "webapp${count.index}"
        environment = "vscode"
        timetolive = "10"
        backup = "no"
    }
}
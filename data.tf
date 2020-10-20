# data source to pull amazon ami id

data "aws_ami" "amznlx" {
    most_recent = true

    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["137112412989"]
}

# security group to ensure the inbound & outbound rule if alredy doesn't exist

resource "aws_security_group" "allow_tls" {
    count = var.enable_security_grp ? 1 : 0
    name = "allow_tls"
    description = "Allow TLS traffic for Inbound & Outbound"

    ingress {
        description = "tls for inbound"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "tls for outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags = {
        Name = "allow_tls"
    }
}
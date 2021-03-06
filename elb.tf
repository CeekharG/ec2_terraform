# elastic load balancer for ec2 instance

resource  "aws_elb" "bar" {
    name = "foobar-terraform-elb"
    availability_zones = ["us-east-1a","us-east-1b"]

    listener {
        instance_port = 8000
        instance_protocol = "http"
        lb_port = 80
        lb_protocol = "http"
        // ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
    }

    health_check {
        healthy_threshold = 2
        unhealthy_threshold = 2
        timeout = 3
        target = "HTTP:8000/"
        interval = 30
    }

    //instances =  aws_instance.foo.id
    cross_zone_load_balancing = true
    idle_timeout = 60
    connection_draining = true
    connection_draining_timeout = 400

    tags = {
        Name = "foobar-terraform-elb"
    }

}
provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "instance-1" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    security_groups = ["default"]
    key_name = "winkey-25-09"
    user_data = file("grafana.sh")
    tags = {
        Name = "Grafana-Server"
    }
}

resource "aws_instance" "instance-2" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    security_groups = ["default"]
    key_name = "winkey-25-09"
    tags = {
        Name = "Node-exporter"
    }
}
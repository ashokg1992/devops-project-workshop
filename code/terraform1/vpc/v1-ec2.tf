provider "aws" {
  region = "ap-south-1"

}

resource "aws_instance" "demo-server" {
    ami = "ami-0f5ee92e2d63afc18"
    instance_type = "t3.small"
    key_name = "gashok120707"
    subnet_id = aws_subnet.dpw-public_subent_01.id 
}
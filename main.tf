provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}


resource "aws_key_pair" "generated_key" {
  key_name   = "demo-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "example" {
    ami           = "ami-08a0d1e16fc3f61ea"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    key_name      = aws_key_pair.generated_key.key_name
}


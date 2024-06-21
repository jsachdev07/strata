provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
    shared_credentials_files = ["/var/lib/jenkins/.aws/credentials"]
}


resource "aws_key_pair" "generated_key" {
  key_name   = "demo-key"
  public_key = file("/tmp/id_rsa.pub")
}

resource "aws_instance" "example" {
    ami           = "ami-002070d43b0a4f171"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    key_name      = aws_key_pair.generated_key.key_name
}

output "instance_public_ip" {
    value = aws_instance.example.public_ip
}

#Creating an AWS EC2 instance using Terraform

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "practice-server" {
    ami           = "ami-0220d79f3f480ecf5" # Amazon Linux 2 AMI
    instance_type = "t3.micro"
    
    tags = {
        Name = "PracticeServer"
    }
  
}



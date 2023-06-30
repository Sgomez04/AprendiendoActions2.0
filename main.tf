terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    # Replace this with your bucket name!
    bucket = "mybucketsgomez"
    key    = "terraform.tfstate"
    region = "eu-west-3"
  }
}

#Create ec2
resource "aws_instance" "web" {
  ami           = "ami-008bcc0a51a849165"
  instance_type = "t2.micro"
}



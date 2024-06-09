terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_group" "developers" {
  name = "developersname"

}

resource "aws_iam_group" "gamer" {
  name = "gaming"

}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_user" "gabmer" {
  name = "loadbalancer2"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_lightsail_instance" "rico" {
  name              = "ricom"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform and Rico C.</h1>' | sudo tee /var/www/html/index.html"
}
provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Myvpc"
  }
}

output "vpc-id" {
  value = aws_vpc.myvpc.id
}

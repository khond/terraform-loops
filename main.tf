provider "aws" {
  region = "us-west-2"
  access_key = "AKIAT2IFXPYKGP6HWJCV"
  secret_key = "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"
}

resource "aws_iam_user" "users" {
  count = length(var.aws_users)
  name  = element(var.aws_users, count.index)
}

#----------------------------------------------------------------

resource "aws_instance" "servers" {
  count         = 3
  ami           = "ami-07ab3281411d31d04"
  instance_type = "t3.micro"
  tags = {
    Name = "N ${count.index + 1}"
  }
}

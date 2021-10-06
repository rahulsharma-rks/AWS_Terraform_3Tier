resource "aws_key_pair" "rahulkeypair" {
  key_name   = "rahulkeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}


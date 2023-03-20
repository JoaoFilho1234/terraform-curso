resource "aws_key_pair" "keyTerraform" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}
resource "aws_instance" "vm" {
  ami                         = "ami-005f9685cb30f234b"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.keyTerraform.key_name
  subnet_id                   = module.network.subnet_id
  vpc_security_group_ids      = [module.network.sg_id]
  associate_public_ip_address = true

  tags = {
    "Name" = "vm-terraform"
  }
}
module "nginx-plus" {
  source                 = "f5devcentral/ec2-nginx-plus"
  aws_access_key         = aws_access_key
  aws_secret_key         = aws_secret_key
  nginx_repo_crt         = nginx_repo_crt
  nginx_repo_key         = nginx_repo_key
  key_name               = mykey
  owner_name             = "John Doe"
  owner_email            = j.doe@nginx.com
  subnet_id              = subnet_1245
  vpc_security_group_ids = ["sg_2485023940284"]
}

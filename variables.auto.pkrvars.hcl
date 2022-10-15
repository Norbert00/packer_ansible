region                = "eu-central-1"
instance_type         = "t2.micro"
source_image          = "ami-06148e0e81e5187c8"
source_image_username = "ubuntu"
skip_create_ami       = false
images_name = {
  nginx_php    = "nginx_php"
  jenkins      = "jenkins"
  jenkins_node = "jenkins_node"
}


source "amazon-ebs" "nginx_php" {
  region                = var.region
  instance_type         = var.instance_type
  source_ami            = var.source_image
  ssh_username          = var.source_image_username
  force_deregister      = true
  force_delete_snapshot = true
  skip_create_ami       = var.skip_create_ami
  tags = {
    "provisioner" = "packer"
  }
  ami_name = var.images_name.nginx_php
}


source "amazon-ebs" "jenkins" {
  region                = var.region
  instance_type         = var.instance_type
  source_ami            = var.source_image
  ssh_username          = var.source_image_username
  force_deregister      = true
  force_delete_snapshot = true
  skip_create_ami       = var.skip_create_ami
  tags = {
    "provisioner" = "packer"
  }
  ami_name = var.images_name.jenkins
}


source "amazon-ebs" "jenkins_node" {
  region                = var.region
  instance_type         = var.instance_type
  source_ami            = var.source_image
  ssh_username          = var.source_image_username
  force_deregister      = true
  force_delete_snapshot = true
  skip_create_ami       = var.skip_create_ami
  tags = {
    "provisioner" = "packer"
  }
  ami_name = var.images_name.jenkins_node
}
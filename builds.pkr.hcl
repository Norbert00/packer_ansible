build {
  sources = [
    "source.amazon-ebs.nginx_php"
  ]

  provisioner "ansible" {
    playbook_file = "./ansible/playbooks/playbook.yml"
    host_alias    = var.images_name.nginx_php
  }
}

build {
  sources = [
    "source.amazon-ebs.jenkins"
  ]

  provisioner "ansible" {
    playbook_file = "./ansible/playbooks/playbook.yml"
    host_alias    = var.images_name.jenkins
  }

}

build {
  sources = [
    "source.amazon-ebs.jenkins_node"
  ]

  provisioner "ansible" {
    playbook_file = "./ansible/playbooks/playbook.yml"
    host_alias    = var.images_name.jenkins_node
  }

}


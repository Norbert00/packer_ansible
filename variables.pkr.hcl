variable "region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "source_image" {
  type = string
}

variable "source_image_username" {
  type = string
}

variable "skip_create_ami" {
  type = string
}

variable "images_name" {
  type = map(string)
}
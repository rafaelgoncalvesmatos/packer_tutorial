packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source  = "github.com/hashicorp/docker"
    }
  }
}

variable "docker_image" {
  type    = string
  default = "ubuntu:xenial"
}

source "docker" "ubuntu" {
  image  = var.docker_image
  commit = true
}

build {
  name = "learn-packer"
  sources = [
    "source.docker.ubuntu"
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=hello worlds, Im using ${var.docker_image}",
    ]
    inline = [
      "echo Adding file I AM HERE",
      "echo \"FOO it is value variable $FOO\" > example.txt ",
    ]
  }

  provisioner "shell" {
    inline = ["echo Using ${var.docker_image} with docker image "]
  }
}
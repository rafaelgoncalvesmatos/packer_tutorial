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
  default = "ubuntu"
}

source "docker" "ubuntu-bionic" {
  image  = "${var.docker_image}:xenial"
  commit = true
}

source "docker" "ubuntu" {
  image  = "${var.docker_image}:bionic"
  commit = true
}

source "docker" "ubuntu-groovy" {
  image  = "${var.docker_image}:groovy"
  commit = true
}

build {
  name = "learn-packer"
  sources = [
    "source.docker.ubuntu",
    "source.docker.ubuntu-bionic",
    "source.docker.ubuntu-groovy",
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=Hello World",
    ]
    inline = [
      "echo Adding file on ${var.docker_image} docker image",
      " echo \"FOO is $FOO\" > example.txt",
    ]
  }
  provisioner "shell" {
    inline = [
      "echo Running ${var.docker_image} Docker image.",
    ]
  }
}


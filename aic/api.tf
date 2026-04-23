resource "docker_container"  "api" {
    name = "api-${terraform.workspace}"
    image = "lab/api"

    ports {
        internal = "3000"
        external = var.api_port[terraform.workspace]
    }
}terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
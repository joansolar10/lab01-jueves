resource "docker_container" "web" {
  image = "nginx:stable-alpine"
  name  = "web-${terraform.workspace}"
  ports {
    internal = 80
    external = var.web_port[terraform.workspace]
  }
}
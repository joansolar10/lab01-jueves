resource "docker_container" "bd" {
  image = "postgres:alpine"
  name  = "bd-${terraform.workspace}"
  env   = ["POSTGRES_PASSWORD=1234"]
  ports {
    internal = 5432
    external = var.bd_port[terraform.workspace]
  }
}
### i this piece of code block from state-move main.cf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

 provider "docker" {}

 resource "docker_image" "simplegoservice" {
   name         = "registry.gitlab.com/alta3/simplegoservice"
   keep_locally = true      // keep image after "destroy"
  }
 
resource "docker_container" "simplegoservice" {             # i got this piece of block from output-tf main.tf
  image = docker_image.simplegoservice.image_id
  name = var.container_name
  ports {
  #  internal = 80
  #  external = 2224
    internal = var.internal_port                            # i had to add this part the internal and external i got it from tfvars.tf main.cf
    external = var.external_port
  }
}


# Version du provider Docker
terraform {
    required_providers {
        docker = {
        source = "kreuzwerker/docker"
        version = "3.0.2"
        }
    }
}

# Configurez le provider Docker pour utiliser un hôte local (système hôte)
provider "docker" {
    host = "unix:///var/run/docker.sock"
}

# Déclaration d'une ressource docker_image appelée "build"
resource "docker_image" "build" {
    name  = "tp_terraform:latest"
    build {
        context = "../app"  # Chemin vers le dossier contenant le Dockerfile
        dockerfile = "Dockerfile"
    }
}

# Déclaration d'une ressource docker_container appelée "container"
resource "docker_container" "container" {
    name  = "tpTerraform"
    image = docker_image.build.name
    ports {
        internal = 8000  # Port interne du conteneur
        external = 8000  # Port externe du système hôte
    }

}

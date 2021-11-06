terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.90.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {

  #credentials = file("/home/vagrant/gcpterraformkey.json")

  project = "lab-devops-cloud-t3-rafyy"
  region  = "us-west1"
  zone    = "us-west1-b"
}

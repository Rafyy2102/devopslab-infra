# Cria uma VM no Google Cloud
resource "google_compute_instance" "rafyyvm" { # referencia o id do recurso

  name         = "hellorafyy" #nome da maquina no google
  machine_type = "n1-standard-1"
  zone         = "us-central1-c"

  # Defini a Imagem da VM
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20210927"
    }
  }

  # Habilita rede para a VM com um IP público
  network_interface {
    network = "default" # Estamos usando a VPC default que já vem por padrão no projeto.

    access_config {
    // A presença do bloco access_config, mesmo sem argumentos, garante que a instância estará acessível pela internet.
    }
  }
}

provider "google" {
  project     = "crafty-elf-399417"
  credentials = "key-tf.json"
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_instance" "instance-from-tf" {
  name = "instance-from-tf"
  machine_type = "f1-micro"
  zone = "us-central1-c"
  allow_stopining_for_update = "true"

  boot_disk {
    initialize_params {
      image = "centos-7-v20230912"
    }
  }
  network_interface {
    network = "default"
    access_config{
      # neccessary even empty
    }
  }
}
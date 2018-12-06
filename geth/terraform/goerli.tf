provider "google" {
    credentials = "${file("INSERT_GOOGLE_CLOUD_CREDENTIAL_JSON")}"
    project     = "[INSERT_GOOGLE_CLOUD_PROJECT_ID]"
}

resource "google_compute_instance" "name" {
  name = "INSERT_GOOGLE_CLOUD_INSTANC_NAME",
  zone = "northamerica-northeast1-a",
  machine_type = "custom-2-4096",
  min_cpu_platform = "Intel Skylake"
  tags = ["http-server", "https-server"]

  boot_disk {
    initialize_params {
        image = "ubuntu-1804-lts"
        type = "pd-ssd"
        size = "40"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }

  metadata_startup_script = "sudo apt update -y && sudo apt upgrade -y"
}
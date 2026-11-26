terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "server_config" {
  filename = "${path.module}/server.txt"
  content  = <<-EOT
    hostname = web-server-01
    ip_address = 192.168.1.10
    subnet_mask = 255.255.255.0
    gateway = 192.168.1.1
    dns_servers = 8.8.8.8, 8.8.4.4
    port = 8080
  EOT
}

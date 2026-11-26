provider "random" {}

resource "random_string" "name" {
  length  = 15
  special = true
}

output "random_string_name" {
  value = random_string.name.id
}
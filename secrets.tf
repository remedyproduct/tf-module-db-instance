resource "random_string" "database" {
  length  = 16
  special = false
}

resource "random_string" "username" {
  length  = 16
  special = false
}

resource "random_password" "password" {
  length  = 32
  special = false
}

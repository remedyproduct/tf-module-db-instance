output "address" {
  value = aws_db_instance.main.address
}

output "port" {
  value = aws_db_instance.main.port
}

output "master_database" {
  value = random_string.database.result
}

output "master_username" {
  value = random_string.username.result
}

output "master_password" {
  value = random_password.password.result
}

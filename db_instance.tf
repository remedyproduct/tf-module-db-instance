resource "aws_db_instance" "main" {
  allocated_storage = var.storage_size
  storage_type      = "gp2"
  instance_class    = var.instance_class

  engine                      = var.db_engine
  engine_version              = var.db_engine_version
  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = false

  publicly_accessible = false
  apply_immediately   = false

  db_subnet_group_name = aws_db_subnet_group.default.name
  multi_az             = true

  identifier = substr(format("%s-%s-db", var.name, var.environment, "lb"), 0, 32)

  name = random_string.database.result

  username = random_string.username.result
  password = random_password.password.result
}

resource "aws_db_subnet_group" "default" {
  name       = substr(format("%s-%s-%s", var.name, var.environment, "subnet-group"), 0, 32)
  subnet_ids = concat(var.subnet_ids)

  tags = {
    Name = substr(format("%s-%s-%s", var.name, var.environment, "subnet-group"), 0, 32)
  }
}

# Usage

<!--- BEGIN_TF_DOCS --->
Relational Database Service - Terraform Module

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.46.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.46.0 |
| random | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_db_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) |
| [aws_db_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) |
| [random_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) |
| [random_string](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| db\_engine | Database Engine (mysql, postgres, etc.) | `string` | `"postgres"` | no |
| db\_engine\_version | The version of choosen `db_engine` | `string` | `"9.6.20"` | no |
| environment | Environment (development, qa, live, etc.) | `string` | `"development"` | no |
| instance\_class | Database Instance class | `string` | `"db.t2.micro"` | no |
| name | Load Balancer Name | `string` | n/a | yes |
| storage\_size | Size in Gb for DB Instance | `number` | `5` | no |
| subnet\_ids | The list of VPC subnets Database Instance should be attached to | `list` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| address | n/a |
| master\_database | n/a |
| master\_password | n/a |
| master\_username | n/a |
| port | n/a |

<!--- END_TF_DOCS --->


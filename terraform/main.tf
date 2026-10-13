terraform {
  required_version = ">= 1.5"
}

resource "terraform_data" "example" {
  input = "hello"
}

output "example" {
  value = terraform_data.example.output
}

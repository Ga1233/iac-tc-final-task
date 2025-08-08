terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }

  cloud {
    organization = "gaurav-devops-org"  # CHANGE this to your actual Terraform Cloud org name
    workspaces {
      name = "iac-tc-final-task"
    }
  }
}

provider "null" {}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello from Terraform Cloud!"
  }
}

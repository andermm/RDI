provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
}

# terraform {
#   backend "s3" {
#     bucket         = "RDI"
#     key            = "RDI/1-Terraform/terraform/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform_rdi_locks"
#     encrypt        = true
#   }
# }

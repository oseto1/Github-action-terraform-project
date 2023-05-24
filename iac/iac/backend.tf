# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "github-action-terraform-remote-state"
    key            = "rentzone-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb-terraform-state-lock"
  }
}

data "terraform_remote_state" "devopsb28-state" {
  backend = "s3"
  config = {
    bucket = "devopsb28terraformstate"
    key    = "devenv/devopsb28dev.tfstate"
    region = "us-east-1"
    dynamodb_table = "devopsb28terraformlocks"
    encrypt        = true
  }
}
terraform {
  backend "s3" {
    bucket = "multienvec2"
    key    = "multi-env.tfstate"
    region = "eu-central-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
    dynamodb_table = "remote-backend-locking"
  }
}

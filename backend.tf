terraform {
  backend "s3" {
    bucket         = "tf-infra-task45"
    key            = "task2/state.tfstate"
    region         = "us-east-1"
  }
}

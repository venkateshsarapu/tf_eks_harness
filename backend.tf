terraform {
  backend "s3" {
    bucket         = "tf-infra-task1"
    key            = "task2/state.tfstate"
    region         = "us-east-1"
  }
}

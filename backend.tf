terraform {
  backend "s3" {
    bucket         = "tf-infra-taskk"
    key            = "task2/state.tfstate"
    region         = "us-east-1"
  }
}

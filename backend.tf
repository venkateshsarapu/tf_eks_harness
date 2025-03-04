terraform {
  backend "s3" {
    bucket         = "venky-bucket-multi"
    key            = "task2/state.tfstate"
    region         = "us-east-1"
  }
}

terraform {
  backend "s3" {
    bucket         = "venkybucketmulti"
    key            = "task2/state.tfstate"
    region         = "us-east-1"
  }
}

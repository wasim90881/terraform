terraform {
  backend "s3" {
    bucket = "test-9088"
    key    = "path/to/my/key"
    region = "us-east-2"
  }
}


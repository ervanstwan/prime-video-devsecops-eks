terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "prime-video-clone/terraform.tfstate"
    region = "us-east-1"
  }
}

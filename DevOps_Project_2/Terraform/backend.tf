terraform {
  backend "s3" {
    bucket = "terraform-statefile-536twf"
    key = "server_name/statefile"
    region = "us-east-1"
  }
}  

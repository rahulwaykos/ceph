

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "test"
    access_key = "12345"
    secret_key = "67890"
    endpoint = "admin"  
    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    
    region = "US"
  }
}


terraform {
  backend "s3" {
    endpoint = "admin"
    region = "us-west-1" # Basically this gets ignored.
    access_key = "12345"
    secret_key = "67890"
    bucket = "mybucket"
    key = "terraform"
    
    skip_credentials_validation = true
    
    skip_metadata_api_check = true
  }
}

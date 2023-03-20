
provider "aws" {
  region  = "us-west-2"
  shared_config_files      = ["/Users/n01506010/.aws/config"]
  shared_credentials_files = ["/Users/n01506010/.aws/credentials"]
  profile                  = "test"
}
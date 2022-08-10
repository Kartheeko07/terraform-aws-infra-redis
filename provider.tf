provider "aws" {
  alias  = "usa"
  region = "us-east-2"
}

provider "aws" {
  alias  = "europe"
  region = "us-west-1"
}

provider "aws" {
  alias  = "asia"
  region = "ap-east-1"
}

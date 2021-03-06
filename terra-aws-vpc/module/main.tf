provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./vpc"

  vpc_cidr_block    = "10.0.0.0/16"
  private_subnet    = ["10.0.1.0/24"]
  public_subnet     = ["10.0.4.0/24"]
  availability_zone = ["us-west-2a", "us-west-2b", "us-west-2c"]
}
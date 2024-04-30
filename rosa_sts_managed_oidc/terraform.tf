terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.20.0"
    }
    rhcs = {
      version = ">= 1.5.0"
      source  = "terraform-redhat/rhcs"
    }
  }
  backend "s3" {
    bucket         = "rhys-rh-state"
    key            = "rppoc/state/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "mycomponents_tf_lockid"
  }
}

# Export token using the RHCS_TOKEN environment variable
provider "rhcs" {}

provider "aws" {
  region = var.aws_region
  ignore_tags {
    key_prefixes = ["kubernetes.io/"]
  }
}

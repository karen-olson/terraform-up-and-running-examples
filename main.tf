# step 1: configure the provider(s) you want to use
provider "aws" {
    region = "us-east-2"
}

# step 2: define the resources you want to create with that provider
/* resource "<PROVIDER>_<TYPE>" "<NAME"> {
        [CONFIG ...]
    }
*/

resource "aws_instance" "example" {
    # Amazon Machine Image that runs on the EC2 instance
    # There are free and paid AMIs in the AWS Marketplace. 
    # This AMI is free, but the IDs differ by region.
    ami           = "ami-0fb653ca2d3203ac1"
    # Type of EC2 Instance to run
    # The EC2 Instance Types page lists all available options for CUP, memory, disk space, and networking capacity.
    # This one has one virtual CPI, 1GB memory, and is on the AWS Free Tier
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-first-example"
    }
}
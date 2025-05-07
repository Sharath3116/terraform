
# AWS VPC Terraform Module

This is a Terraform module that helps you create a full AWS VPC setup. You can use it to quickly create a VPC, subnets, route tables, and peering connections between VPCs.

## What This Module Does

- Creates a **VPC** (Virtual Private Cloud)
- Adds **Public**, **Private**, and **Database** subnets
- Sets up **route tables** for internet and internal communication
- Supports **VPC peering** (connects two VPCs together)
- Adds **tags** to organize your resources

## How to Use

```hcl
module "vpc" {
  source = "git::https://github.com/Sharath3116/terraform.git//terraform-aws-vpc?ref=main"

  vpc_cidr             = "10.0.0.0/16"
  public_subnets_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
  database_subnets_cidr = ["10.0.5.0/24", "10.0.6.0/24"]

  az_names = ["us-east-1a", "us-east-1b"]

  enable_nat_gateway = true
  is_peering_required = true
  acceptor_vpc_id = "" # Leave this blank if you're creating a new peering

  common_tags = {
    Environment = "dev"
    Project     = "my-vpc-project"
  }
}
```

## What You Need to Provide

You need to give:
- A VPC CIDR block (e.g., `10.0.0.0/16`)
- Subnet CIDRs for public, private, and database subnets
- Availability Zones (e.g., `us-east-1a`, `us-east-1b`)
- Whether to enable NAT or peering
- Any tags you want to add

## What You Get

After running Terraform, you get:
- A new VPC
- Subnets in different zones
- Internet and NAT gateways (if enabled)
- Peering connection (if enabled)
- Useful output like subnet IDs and VPC ID

## Author

Sharath S

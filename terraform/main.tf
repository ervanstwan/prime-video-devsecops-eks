module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"
  name = "eks-vpc"
  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "prime-video-eks"
  cluster_version = "1.24"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
}

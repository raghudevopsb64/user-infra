module "vpc" {
  source         = "git::https://github.com/raghudevopsb64/tf-module-vpc.git"
  VPC_CIDR_BLOCK = var.VPC_CIDR_BLOCK
  COMPONENT      = var.COMPONENT
  ENV            = var.ENV
  SUBNET_CIDR    = var.SUBNET_CIDR
  AZ             = var.AZ
}

module "elasticache" {
  depends_on     = [module.vpc]
  source         = "git::https://github.com/raghudevopsb64/tf-module-elasticache-redis.git"
  ENGINE         = var.EC_ENGINE
  ENGINE_VERSION = var.EC_ENGINE_VERSION
  NODE_TYPE      = var.EC_NODE_TYPE
  ENV            = var.ENV
  COMPONENT      = var.COMPONENT
  NODE_COUNT     = var.EC_NODE_COUNT
  FAMILY         = var.EC_FAMILY
  VPC_ID         = module.vpc.VPC_ID
  VPC_CIDR       = module.vpc.VPC_CIDR
  SUBNET_IDS     = module.vpc.SUBNET_IDS
}

module "documentdb" {
  depends_on          = [module.vpc]
  source              = "git::https://github.com/raghudevopsb64/tf-module-documentdb.git"
  ENGINE              = var.DOCDB_ENGINE
  ENGINE_VERSION      = var.DOCDB_ENGINE_VERSION
  NODE_TYPE           = var.DOCDB_NODE_TYPE
  ENV                 = var.ENV
  COMPONENT           = var.COMPONENT
  NODE_COUNT          = var.DOCDB_NODE_COUNT
  FAMILY              = var.DOCDB_FAMILY
  SKIP_FINAL_SNAPSHOT = var.DOCDB_SKIP_FINAL_SNAPSHOT
  VPC_ID              = module.vpc.VPC_ID
  VPC_CIDR            = module.vpc.VPC_CIDR
  SUBNET_IDS          = module.vpc.SUBNET_IDS
}

module "app" {
  depends_on              = [module.vpc]
  source                  = "git::https://github.com/raghudevopsb64/tf-modfule-mutable.git"
  ONDEMAND_INSTANCE_COUNT = var.ONDEMAND_INSTANCE_COUNT
  SPOT_INSTANCE_COUNT     = var.SPOT_INSTANCE_COUNT
  VPC_ID                  = module.vpc.VPC_ID
  VPC_CIDR                = module.vpc.VPC_CIDR
  SUBNET_IDS              = module.vpc.SUBNET_IDS
  COMPONENT               = var.COMPONENT
  ENV                     = var.ENV
  NODE_TYPE               = var.EC2_NODE_TYPE
  PORT                    = var.PORT
  WORKSTATION_IP          = var.WORKSTATION_IP
}




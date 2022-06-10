VPC_CIDR_BLOCK = "10.10.2.0/24"
ENV            = "dev"
SUBNET_CIDR    = ["10.10.2.0/25", "10.10.2.128/25"]

EC_ENGINE         = "redis"
EC_ENGINE_VERSION = "6.2"
EC_NODE_TYPE      = "cache.t3.micro"
EC_NODE_COUNT     = 1
EC_FAMILY         = "redis6.x"

DOCDB_ENGINE              = "docdb"
DOCDB_ENGINE_VERSION      = "4.0.0"
DOCDB_NODE_TYPE           = "db.t3.medium"
DOCDB_NODE_COUNT          = 1
DOCDB_FAMILY              = "docdb4.0"
DOCDB_SKIP_FINAL_SNAPSHOT = true

EC2_NODE_TYPE           = "t3.micro"
PORT                    = 8080
ONDEMAND_INSTANCE_COUNT = 0
SPOT_INSTANCE_COUNT     = 1
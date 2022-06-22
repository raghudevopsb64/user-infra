variable "VPC_CIDR_BLOCK" {}
variable "COMPONENT" {}
variable "ENV" {}
variable "SUBNET_CIDR" {}
variable "AZ" {}

variable "EC_ENGINE" {}
variable "EC_ENGINE_VERSION" {}
variable "EC_NODE_TYPE" {}
variable "EC_NODE_COUNT" {}
variable "EC_FAMILY" {}


variable "DOCDB_ENGINE" {}
variable "DOCDB_ENGINE_VERSION" {}
variable "DOCDB_NODE_TYPE" {}
variable "DOCDB_NODE_COUNT" {}
variable "DOCDB_FAMILY" {}
variable "DOCDB_SKIP_FINAL_SNAPSHOT" {}

variable "EC2_NODE_TYPE" {}
variable "PORT" {}
variable "ONDEMAND_INSTANCE_COUNT" {}
variable "SPOT_INSTANCE_COUNT" {}
variable "WORKSTATION_IP" {}
variable "PROMETHEUS_IP" {}

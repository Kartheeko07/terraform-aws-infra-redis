######## Common Redis variables for Production ########
variable "redis_name" {}
variable "redis_version" {}
variable "redis_parameter_group_name" {}
variable "redis_cluster_size" {}
variable "redis_automatic_failover_enabled" {}
variable "redis_family" {}
variable "redis_multi_az_enabled" {}
variable "redis_at_rest_encryption_enabled" {}
variable "redis_transit_encryption_enabled" {}
variable "redis_node_type" {}
variable "redis_port" {}
variable "redis_apply_immediately" {}
variable "redis_auto_minor_version_upgrade" {}
variable "redis_maintenance_window" {}
variable "redis_snapshot_window" {}
variable "redis_snapshot_retention_limit" {}
variable "redis_mandatory_tags" {}
variable "redis_additional_tags" {}
variable "redis_secret_name" {}
variable "redis_cluster_mode_enabled" {}
variable "redis_cluster_mode_replicas_per_node_group" {}
variable "redis_cluster_mode_num_node_groups" {}

############# Region Specific Redis Variables for Production ################

#### For us-east-2 ##########
variable "vpc_id_us_east-2" {}
variable "redis_availability_zones_us_east-2" {}
variable "redis_ingress_rules_us_east-2" {}
variable "redis_subnet_ids_us_east-2" {}

#### For eu-west-1 ##########
variable "vpc_id_eu-west-1" {}
variable "redis_availability_zones_eu-west-1" {}
variable "redis_ingress_rules_eu-west-1" {}
variable "redis_subnet_ids_eu-west-1" {}

#### For ap-east-1 ##########
variable "vpc_id_ap-east-1" {}
variable "redis_availability_zones_ap-east-1" {}
variable "redis_ingress_rules_ap-east-1" {}
variable "redis_subnet_ids_ap-east-1" {}

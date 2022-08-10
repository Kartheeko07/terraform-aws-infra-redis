############# Region Specific Redis Values for Production ################

#### For us-east-2 ##########
vpc_id_us_east-2 = ""
redis_availability_zones_us_east-2 = [
  "us-east-2b", "us-east-2c",
]
redis_ingress_rules_us_east-2 = []
redis_subnet_ids_us_east-2    = []

#### For eu-west-1 ##########
vpc_id_eu-west-1 = ""
redis_availability_zones_eu-west-1 = [
  "us-west-1b", "us-west-1c",
]
redis_ingress_rules_eu-west-1 = []
redis_subnet_ids_eu-west-1    = []

#### For ap-east-1 ##########
vpc_id_ap-east-1 = ""
redis_availability_zones_ap-east-1 = [
  "ap-east-1b", "ap-east-1c",
]
redis_ingress_rules_ap-east-1 = []
redis_subnet_ids_ap-east-1    = []

############# Common Redis Details for Production ################

redis_name                       = "redis-production"
redis_cluster_size               = "2"
redis_automatic_failover_enabled = true
redis_node_type                  = "cache.m5.large"
redis_port                       = "6379"
redis_family                     = "redis6.x"
redis_parameter_group_name       = "redis-production-cache-params-6-x"
redis_apply_immediately          = "true"
redis_auto_minor_version_upgrade = "false"
redis_multi_az_enabled           = true
redis_at_rest_encryption_enabled = true
redis_transit_encryption_enabled = true
redis_maintenance_window         = "fri:08:00-fri:09:00"
redis_snapshot_window            = "06:30-07:30"
redis_snapshot_retention_limit   = 0
redis_version                    = "6.x"
redis_mandatory_tags = {
  Service       = "ElastiCache Redis"
  Owner         = "Infrastructure"
  Name          = "Redis-Production"
  Clasification = "Internal"
}
# Can put the below variable also into region specific variables
redis_additional_tags = {
  ManagedBy = "Terraform"
  CreatedBy = "Terraform"
}
redis_secret_name                          = "redis-production"
redis_cluster_mode_enabled                 = true
redis_cluster_mode_replicas_per_node_group = 1
redis_cluster_mode_num_node_groups         = 2

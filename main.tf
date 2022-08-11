module "usa-elasticache" {

  source = "git@github.com:Kartheeko07/terraform-aws-elasticache-module.git?ref=v0.0.4"
  providers = {
    aws = aws.usa
  }
  name                                 = var.redis_name
  cluster_size                         = var.redis_cluster_size
  automatic_failover_enabled           = var.redis_automatic_failover_enabled
  redis_node_type                      = var.redis_node_type
  redis_port                           = var.redis_port
  family                               = var.redis_family
  apply_immediately                    = var.redis_apply_immediately
  auto_minor_version_upgrade           = var.redis_auto_minor_version_upgrade
  multi_az_enabled                     = var.redis_multi_az_enabled
  at_rest_encryption_enabled           = var.redis_at_rest_encryption_enabled
  transit_encryption_enabled           = var.redis_transit_encryption_enabled
  availability_zones                   = var.redis_availability_zones_us_east-2
  vpc_id                               = var.vpc_id_us_east-2
  redis_maintenance_window             = var.redis_maintenance_window
  redis_snapshot_window                = var.redis_snapshot_window
  redis_snapshot_retention_limit       = var.redis_snapshot_retention_limit
  mandatory_elasticache_tags           = var.redis_mandatory_tags
  tags                                 = var.redis_additional_tags
  subnet_ids                           = var.redis_subnet_ids_us_east-2
  redis_secret_name                    = var.redis_secret_name
  redis_ingress_rules                  = var.redis_ingress_rules_us_east-2
  redis_version                        = var.redis_version
  redis_parameter_group_name           = var.redis_parameter_group_name
  cluster_mode_enabled                 = var.redis_cluster_mode_enabled
  cluster_mode_replicas_per_node_group = var.redis_cluster_mode_replicas_per_node_group
  cluster_mode_num_node_groups         = var.redis_cluster_mode_num_node_groups
}

module "europe-elasticache" {

  source = "git@github.com:Kartheeko07/terraform-aws-elasticache-module.git?ref=v0.0.4"
  providers = {
    aws = aws.europe
  }
  name                                 = var.redis_name
  cluster_size                         = var.redis_cluster_size
  automatic_failover_enabled           = var.redis_automatic_failover_enabled
  redis_node_type                      = var.redis_node_type
  redis_port                           = var.redis_port
  family                               = var.redis_family
  apply_immediately                    = var.redis_apply_immediately
  auto_minor_version_upgrade           = var.redis_auto_minor_version_upgrade
  multi_az_enabled                     = var.redis_multi_az_enabled
  at_rest_encryption_enabled           = var.redis_at_rest_encryption_enabled
  transit_encryption_enabled           = var.redis_transit_encryption_enabled
  availability_zones                   = var.redis_availability_zones_eu-west-1
  vpc_id                               = var.vpc_id_eu-west-1
  redis_maintenance_window             = var.redis_maintenance_window
  redis_snapshot_window                = var.redis_snapshot_window
  redis_snapshot_retention_limit       = var.redis_snapshot_retention_limit
  mandatory_elasticache_tags           = var.redis_mandatory_tags
  tags                                 = var.redis_additional_tags
  subnet_ids                           = var.redis_subnet_ids_eu-west-1
  redis_secret_name                    = var.redis_secret_name
  redis_ingress_rules                  = var.redis_ingress_rules_eu-west-1
  redis_version                        = var.redis_version
  redis_parameter_group_name           = var.redis_parameter_group_name
  cluster_mode_enabled                 = var.redis_cluster_mode_enabled
  cluster_mode_replicas_per_node_group = var.redis_cluster_mode_replicas_per_node_group
  cluster_mode_num_node_groups         = var.redis_cluster_mode_num_node_groups
}

module "asia-elasticache" {

  source = "git@github.com:Kartheeko07/terraform-aws-elasticache-module.git?ref=v0.0.4"
  providers = {
    aws = aws.asia
  }
  name                                 = var.redis_name
  cluster_size                         = var.redis_cluster_size
  automatic_failover_enabled           = var.redis_automatic_failover_enabled
  redis_node_type                      = var.redis_node_type
  redis_port                           = var.redis_port
  family                               = var.redis_family
  apply_immediately                    = var.redis_apply_immediately
  auto_minor_version_upgrade           = var.redis_auto_minor_version_upgrade
  multi_az_enabled                     = var.redis_multi_az_enabled
  at_rest_encryption_enabled           = var.redis_at_rest_encryption_enabled
  transit_encryption_enabled           = var.redis_transit_encryption_enabled
  availability_zones                   = var.redis_availability_zones_ap-east-1
  vpc_id                               = var.vpc_id_ap-east-1
  redis_maintenance_window             = var.redis_maintenance_window
  redis_snapshot_window                = var.redis_snapshot_window
  redis_snapshot_retention_limit       = var.redis_snapshot_retention_limit
  mandatory_elasticache_tags           = var.redis_mandatory_tags
  tags                                 = var.redis_additional_tags
  subnet_ids                           = var.redis_subnet_ids_ap-east-1
  redis_secret_name                    = var.redis_secret_name
  redis_ingress_rules                  = var.redis_ingress_rules_ap-east-1
  redis_version                        = var.redis_version
  redis_parameter_group_name           = var.redis_parameter_group_name
  cluster_mode_enabled                 = var.redis_cluster_mode_enabled
  cluster_mode_replicas_per_node_group = var.redis_cluster_mode_replicas_per_node_group
  cluster_mode_num_node_groups         = var.redis_cluster_mode_num_node_groups
}

output "redis_endpoint_usa" {
  value = module.usa-elasticache.endpoint
}
output "redis_parameter_group_usa" {
  value = module.usa-elasticache.parameter_group
}
output "redis_endpoint_europe" {
  value = module.europe-elasticache.endpoint
}
output "redis_parameter_group_europe" {
  value = module.europe-elasticache.parameter_group
}
output "redis_endpoint_asia" {
  value = module.asia-elasticache.endpoint
}
output "redis_parameter_group_asia" {
  value = module.asia-elasticache.parameter_group
}

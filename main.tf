 resource "aws_athena_workgroup" "docdb_query_user_business_lending" {
  count   = length(var.name)
 name = var.name[count.index]
 configuration {
 enforce_workgroup_configuration    = var.enforce_workgroup_configuration
 publish_cloudwatch_metrics_enabled = var.publish_cloudwatch_metrics_enabled

 result_configuration {
 output_location = var.output_location
 }
 }
 }

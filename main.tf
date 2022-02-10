 resource "aws_athena_workgroup" "docdb_query_user_business_lending" {
 name = "docdb_query_user_business_lending"

 configuration {
 enforce_workgroup_configuration    = true
 publish_cloudwatch_metrics_enabled = true

 result_configuration {
 output_location = "s3:// athena-workload-dev"
 }
 }
 }

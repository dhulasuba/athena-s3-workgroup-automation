


resource "aws_athena_workgroup" "docdb_query_user_business_lending" {
  count = "${length(var.name)}"
  name = "${element(var.name, count.index)}"
#   name = var.name

  configuration {
    enforce_workgroup_configuration    = var.enforce_workgroup_configuration
    publish_cloudwatch_metrics_enabled = var.publish_cloudwatch_metrics_enabled

    result_configuration {
      output_location = "s3:// athena-workload-dev"
    }
  }
}

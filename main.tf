


resource "aws_athena_workgroup" "docdb_query_user_business_lending" {
#   count = "${length(var.name)}"
   count = length(var.name)
   name = var.name[count.index]
   depends_on = [aws_s3_bucket.buckets]
#   subnet_id     = var.subnet_ids[count.index]
#   name = "${element(var.name, count.index)}"
#   name = var.name

  configuration {
    enforce_workgroup_configuration    = var.enforce_workgroup_configuration
    publish_cloudwatch_metrics_enabled = var.publish_cloudwatch_metrics_enabled

    result_configuration {
      output_location = "s3://${aws_s3_bucket.buckets[count.index]}"
#       output_location = "s3://${aws_s3_bucket.example.bucket}/output/"
    }
  }
}

resource "aws_s3_bucket" "buckets" {
  count         = length(var.s3_bucket_names) //count will be 3
  bucket        = var.s3_bucket_names[count.index]
#   acl           = "private"
#   region        = "us-east-1"
#  tags = {
#     Name        = " athena-workload-dev"
#     Environment = "application-prod "
#   }
# }

}

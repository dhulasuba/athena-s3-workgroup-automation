variable "enforce_workgroup_configuration" {
  type        = bool
  description = "Boolean whether the settings for the workgroup override client-side settings."
  default     = true
}


# variable "name" {
#   type        = string
#   description = "The name of the workgroup."
#   default  = "docdb_query_user_business_lending"
# }

variable "name" {
  type        = list
  description = "The name of the workgroup."
  default  = ["docdb_query_user_business_lending","docdb_query_user_corporate","docdb_query_user_new_horizon"]
}


#variable "output_location" {
#  type        = string
#  description = "The location in Amazon S3 where your query results are stored, such as s3://path/to/query/bucket/."
#  default = "athena-workload-dev"
#}

variable "publish_cloudwatch_metrics_enabled" {
  type        = bool
  description = "Boolean whether Amazon CloudWatch metrics are enabled for the workgroup."
  default     = true
}

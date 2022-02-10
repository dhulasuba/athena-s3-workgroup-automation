variable "enforce_workgroup_configuration" {
  type        = bool
  description = "Boolean whether the settings for the workgroup override client-side settings."
  default     = true
}

variable "name" {
  type        = string
  description = "The name of the AWS IAM policy."
}

variable "output_location" {
  type        = string
  description = "The location in Amazon S3 where your query results are stored, such as s3://path/to/query/bucket/."
  default = s3:// athena-workload-dev
}

variable "publish_cloudwatch_metrics_enabled" {
  type        = bool
  description = "Boolean whether Amazon CloudWatch metrics are enabled for the workgroup."
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the workgroup."
  default     = {}
}

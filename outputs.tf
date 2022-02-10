output "arn" {
  description = "The Amazon Resource Name (ARN) of the workgroup."
  value       = aws_athena_workgroup.docdb_query_user_business_lending.arn
}

output "id" {
  description = "The id of the workgroup."
  value       = aws_athena_workgroup.docdb_query_user_business_lending.id
}




#Creates an AWS Athena workgroup
module "athena_workgroup" {
    source = "git::https://github.com/dhulasuba/athena-s3-workgroup-automation.git"
    #count   = length(var.name)
   # name = var.name[count.index]
  name="docdb_query_user_business_lending"
    #output_location = var.output_location
    output_location = "s3:// athena-workload-dev"
  }

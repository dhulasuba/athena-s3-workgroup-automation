


#Creates an AWS Athena workgroup
module "athena_workgroup" {
    source = "git::https://github.com/dhulasuba/athena-s3-workgroup-automation.git"
    count   = length(var.name)
    name = var.name[count.index]
    #output_location = var.output_location
    output_location = "s3:// athena-workload-dev"
  }

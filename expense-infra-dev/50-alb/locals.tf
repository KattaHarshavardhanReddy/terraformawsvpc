locals {
  private_subnet_ids = join(",",data.aws_ssm_parameter.private_subnet_ids.value)
}
module "mysql_sg" {
    source = "git::https://github.com/KattaHarshavardhanReddy/terraformawsvpc.git//modules/sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_name
    sg_description = "created for mysql module"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "backend_sg" {
    source = "git::https://github.com/KattaHarshavardhanReddy/terraformawsvpc.git//modules/sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_name
    sg_description = "created for backend module"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}
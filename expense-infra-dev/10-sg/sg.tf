module "mysql_sg" {
    source = "git::https://github.com/KattaHarshavardhanReddy/terraformawsvpc.git//modules/sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "created for mysql module"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "backend_sg" {
    source = "git::https://github.com/KattaHarshavardhanReddy/terraformawsvpc.git//modules/sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "backend"
    sg_description = "created for backend module"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "frontend_sg" {
    source = "git::https://github.com/KattaHarshavardhanReddy/terraformawsvpc.git//modules/sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "frontend"
    sg_description = "created for frontend module"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "bastion_sg" {
    source = "git::https://github.com/KattaHarshavardhanReddy/terraformawsvpc.git//modules/sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "bastion"
    sg_description = "created for bastion module"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "app_alb_sg" {
    source = "git::https://github.com/KattaHarshavardhanReddy/terraformawsvpc.git//modules/sg?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "app_alb"
    sg_description = "created for backend alb in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}
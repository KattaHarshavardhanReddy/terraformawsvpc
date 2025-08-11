module "mysql_sg" {
    source = "../modules/sg"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_name
    sg_description = "created for mysql module"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}
module "alb" {
  source = "terraform-aws-modules/alb/aws"

  name    = "${var.project_name}-${var.environment}-app-alb"
  vpc_id  = data.aws_ssm_parameter.vpc_id.value
  subnets = local.private_subnet_ids
  create_security_group = false
  
  tags = {
    Environment = "Development"
    Project     = "Example"
  }
}
resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name} /${var.environment}/vpc_id"
    type = "string"
    value = module.roboshop.vpc_id

}
  
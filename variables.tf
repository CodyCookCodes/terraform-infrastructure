variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "task-api"
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = "my-aws-key"
}

variable "instance_type_map" {
  description = "Instance types by environment"
  type		  = map(string)
  default = {
	dev		  = "t3.micro"
	staging	  = "t3.micro"
	prod	  = "t3.micro"
  }
}

variable "db_instance_class_map" {
  description = "DB instance classes by environment"
  type		  = map(string)
  default = {
	dev		  = "db.t3.micro"
	staging	  = "db.t3.micro"
	prod	  = "db.t3.micro"
  }
}

variable "enable_monitoring" {
  description = "Enable enhanced monitoring"
  type		  = bool
  default	  = false
}
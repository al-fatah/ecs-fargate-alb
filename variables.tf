variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-southeast-1"
}

variable "project_name" {
  description = "Prefix for all resource names"
  type        = string
  default     = "ecs-demo"
}

variable "container_image" {
  description = "Docker image for ECS service"
  type        = string
  default     = "nginx:latest"
}

variable "task_cpu" {
  description = "Fargate task CPU units"
  type        = string
  default     = "256"
}

variable "task_memory" {
  description = "Fargate task memory (MiB)"
  type        = string
  default     = "512"
}

variable "desired_count" {
  description = "Initial desired number of tasks"
  type        = number
  default     = 2
}

variable "min_count" {
  description = "Minimum tasks for autoscaling"
  type        = number
  default     = 1
}

variable "max_count" {
  description = "Maximum tasks for autoscaling"
  type        = number
  default     = 4
}

variable "cpu_target_value" {
  description = "Target CPU utilization for ECS autoscaling"
  type        = number
  default     = 50
}

variable "health_check_path" {
  description = "ALB health check path"
  type        = string
  default     = "/"
}

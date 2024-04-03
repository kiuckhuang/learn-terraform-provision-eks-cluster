# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "test-eks-cluster"
}

variable "cluster_version" {
  description = "Version of the EKS cluster"
  type        = string
  default     = "1.29"
}

variable "vpc_cidr" {
  description = "CIDR range for the VPC"
  type        = string
  default     = "10.128.0.0/16"
}

variable "subnet_addbits" {
  description = "The number of additional bits to add to the VPC CIDR to create subnets"
  type        = number
  default     = 8
}

variable "eks_add_on_repo" {
  description = "The repo number from https://docs.aws.amazon.com/eks/latest/userguide/add-ons-images.html"
  type        = number
  default     = 602401143452
}

variable "eks_ami_type" {
  description = "The AMI type for the node group"
  type        = string
  default     = "AL2_x86_64"
}

variable "eks_ami_variant" {
  description = "The AMI variant for the node group"
  type        = string
  default     = "t3.medium"
}

variable "eks_node_group" {
  description = "The node group configuration"
  type = object({
    min_size     = number
    max_size     = number
    desired_size = number
  })
  default = {
    min_size     = 1
    max_size     = 2
    desired_size = 1
  }
}

variable "app_namespace" {
  description = "The namespace to deploy the application"
  type        = string
  default     = "test-namespace"
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "test-app"
}
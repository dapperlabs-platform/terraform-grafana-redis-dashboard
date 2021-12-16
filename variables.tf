variable "aggregation" {
  description = "Aggregation"
  type        = string
  default     = "auto"
}

variable "bdb" {
  description = "BDB"
  type        = string
}

variable "cluster" {
  description = "Cluster address"
  type        = string
}

variable "folder_id" {
  description = "Grafana Folder ID"
  type        = string
}

variable "prom_datasource" {
  description = "Prometheus Datasource"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "product_name" {
  description = "Product Name"
  type        = string
}

variable "notification_channel" {
  description = "Notification Channel"
  type        = string
}

variable "service_name" {
  description = "Service Name"
  type        = string
}

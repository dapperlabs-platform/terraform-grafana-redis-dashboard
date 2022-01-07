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

variable "latency_threshold" {
  description = "Latency Threshold Alert"
  type        = string
  default     = "2000"
}

variable "listener_latency_threshold" {
  description = "Listener Latency Threshold Alert"
  type        = string
  default     = "1000"
}

variable "operations_per_second_threshold" {
  description = "Operations Per Second Threshold Alert"
  type        = string
  default     = "5000"
}

variable "cpu_per_shard_threshold" {
  description = "CPU Usage Per Shard Threshold Alert"
  type        = string
  default     = "30"
}

variable "storage_used_threshold" {
  description = "Storage Used Threshold Alert"
  type        = string
}

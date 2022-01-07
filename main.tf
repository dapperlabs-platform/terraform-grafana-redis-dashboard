terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 1.14.0"
    }
  }
}

resource "random_string" "random" {
  length  = 12
  special = false
}

resource "grafana_dashboard" "redis_database" {
  folder = var.folder_id

  config_json = templatefile(
    "${path.module}/dashboards/redis-database.json",
    {
      AGGREGATION_REPLACE                = var.aggregation
      BDB_REPLACE                        = var.bdb
      CLUSTER_REPLACE                    = var.cluster
      CPU_PER_SHARD_THRESHOLD_REPLACE    = var.cpu_per_shard_threshold
      ENVIRONMENT_REPLACE                = var.environment,
      LATENCY_THRESHOLD_REPLACE          = var.latency_threshold
      LISTENER_LATENCY_THRESHOLD_REPLACE = var.listener_latency_threshold
      NOTIFICATION_REPLACE               = var.notification_channel
      OPS_SECOND_THRESHOLD_REPLACE       = var.operations_per_second_threshold
      PRODUCT_REPLACE                    = var.product_name
      PROM_DATASOURCE_REPLACE            = var.prom_datasource,
      SERVICE_REPLACE                    = var.service_name
      STORAGE_USED_THRESHOLD_REPLACE     = var.storage_used_threshold
      UID_REPLACE                        = random_string.random.result
    }
  )
}

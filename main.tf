terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 1.16.0"
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
      AGGREGATION_REPLACE     = var.aggregation
      BDB_REPLACE             = var.bdb
      CLUSTER_REPLACE         = var.cluster
      ENVIRONMENT_REPLACE     = var.environment,
      NOTIFICATION_REPLACE    = var.notification_channel
      PRODUCT_REPLACE         = var.product_name
      PROM_DATASOURCE_REPLACE = var.prom_datasource,
      SERVICE_REPLACE         = var.service_name
      UID_REPLACE             = random_string.random.result
    }
  )
}

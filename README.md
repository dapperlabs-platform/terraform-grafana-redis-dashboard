# Redis Dashboard

A default dashboard with alerts for Redis.

`make` updates the `README.md` file based on Terraform changes.

## Requires

1. `terraform` [Download](https://www.terraform.io/downloads.html) [Brew](https://formulae.brew.sh/formula/terraform)
2. `terraform-docs` to update the README. [Download](https://github.com/terraform-docs/terraform-docs) [Brew](https://formulae.brew.sh/formula/terraform-docs)
3. `make` to update the README. [Download](https://www.gnu.org/software/make/)

## Usage

```terraform
module "redis_dashboard" {
    source                  = "github.com/dapperlabs-platform/terraform-grafana-redis-dashboard.git?ref=vX.Y.Z"
    bdb                     = "12345678"
    cluster                 = "server.name.goes.here.com"
    environment             = "production"
    folder_id               = "123"
    product_name            = "product"
    prom_datasource         = "datasource-UID"
    notification_channel    = "grafana-UID"
    service_name            = "product-infrastructure"
    # Alerting thresholds
    cpu_per_shard_threshold         = "30"
    latency_threshold               = "2000"
    listener_latency_threshold      = "1000"
    operations_per_second_threshold = "5000"
    storage_used_threshold          = "26843545600"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | >= 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | >= 1.14.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_dashboard.redis_database](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/dashboard) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aggregation"></a> [aggregation](#input\_aggregation) | Aggregation | `string` | `"auto"` | no |
| <a name="input_bdb"></a> [bdb](#input\_bdb) | BDB | `string` | n/a | yes |
| <a name="input_cluster"></a> [cluster](#input\_cluster) | Cluster address | `string` | n/a | yes |
| <a name="input_cpu_per_shard_threshold"></a> [cpu\_per\_shard\_threshold](#input\_cpu\_per\_shard\_threshold) | CPU Usage Per Shard Threshold Alert | `string` | `"30"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Grafana Folder ID | `string` | n/a | yes |
| <a name="input_latency_threshold"></a> [latency\_threshold](#input\_latency\_threshold) | Latency Threshold Alert | `string` | `"2000"` | no |
| <a name="input_listener_latency_threshold"></a> [listener\_latency\_threshold](#input\_listener\_latency\_threshold) | Listener Latency Threshold Alert | `string` | `"1000"` | no |
| <a name="input_notification_channel"></a> [notification\_channel](#input\_notification\_channel) | Notification Channel | `string` | n/a | yes |
| <a name="input_operations_per_second_threshold"></a> [operations\_per\_second\_threshold](#input\_operations\_per\_second\_threshold) | Operations Per Second Threshold Alert | `string` | `"5000"` | no |
| <a name="input_overwrite_dashboard"></a> [overwrite\_dashboard](#input\_overwrite\_dashboard) | Always overwrite from Terraform | `bool` | `true` | no |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Product Name | `string` | n/a | yes |
| <a name="input_prom_datasource"></a> [prom\_datasource](#input\_prom\_datasource) | Prometheus Datasource | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Service Name | `string` | n/a | yes |
| <a name="input_storage_used_threshold"></a> [storage\_used\_threshold](#input\_storage\_used\_threshold) | Storage Used Threshold Alert | `string` | n/a | yes |

## Outputs

No outputs.

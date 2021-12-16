## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | >= 1.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | 1.16.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |

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
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Grafana Folder ID | `string` | n/a | yes |
| <a name="input_notification_channel"></a> [notification\_channel](#input\_notification\_channel) | Notification Channel | `string` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Product Name | `string` | n/a | yes |
| <a name="input_prom_datasource"></a> [prom\_datasource](#input\_prom\_datasource) | Prometheus Datasource | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Service Name | `string` | n/a | yes |

## Outputs

No outputs.

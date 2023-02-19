<!-- BEGIN_TF_DOCS -->
## Challenge 02:
/*
We need to write code that will query the meta data of an instance within AWS or Azure or GCP
and provide a json formatted output.
The choice of language and implementation is up to you.
*/

/*
The output can be run to create it in a json format by using command "terraform output -json" and to save the output in a json file, the command is "terraform output > output.json"
*/

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.35.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.devrg](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | n/a | `list(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"southindia"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `"rg-dev-sample-001"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | ============= subnet type map(any) =========# | `map(any)` | <pre>{<br>  "subnet_001": {<br>    "address_prefixes": [<br>      "10.0.1.0/24"<br>    ],<br>    "name": "subnet-dev-001"<br>  },<br>  "subnet_002": {<br>    "address_prefixes": [<br>      "10.0.2.0/24"<br>    ],<br>    "name": "subnet-dev-002"<br>  }<br>}</pre> | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | n/a | `string` | `"vnet-dev-sample-001"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_name"></a> [rg\_name](#output\_rg\_name) | n/a |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | n/a |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | n/a |
<!-- END_TF_DOCS -->
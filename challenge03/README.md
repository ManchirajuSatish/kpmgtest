<!-- BEGIN_TF_DOCS -->
## Challenge 03:

/*
We have a nested object. We would like a function where you pass in the object and a key and
get back the value.
The choice of language and implementation is up to you.
Example Inputs
object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
object = {“x”:{“y”:{“z”:”a”}}}
key = x/y/z
value = a
Hints:
We would like to see some tests.
A quick read to help you along the way - We would expect it in any other language apart from
elixir.
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
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nested_objects"></a> [nested\_objects](#input\_nested\_objects) | n/a | `map(map(map(string)))` | <pre>{<br>  "key1": {<br>    "key2": {<br>      "key3": "Satish"<br>    }<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_id"></a> [rg\_id](#output\_rg\_id) | n/a |
<!-- END_TF_DOCS -->
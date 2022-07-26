# azr-tf-data-module-vnet

[Terraform](https://www.terraform.io) Module to get data of a **Virtual Network (VNET)** in Azure

<!-- BEGIN_TF_DOCS -->
## Prerequisites

- [Terraform](https://releases.hashicorp.com/terraform/) v0.12+

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.36.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the VNET resource group. | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | (Optional) Name list of specific subnet to output detailed data. | <pre>list(object({<br>    name = string<br>  }))</pre> | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | (Required) The name of the virtual network to output the data. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_address_prefixes"></a> [subnet\_address\_prefixes](#output\_subnet\_address\_prefixes) | Contains a list of the address prefixes of the subnets |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | Contains a list of the resource id of the subnets |
| <a name="output_subnet_names"></a> [subnet\_names](#output\_subnet\_names) | Contains a list of the resource name of the subnets |
| <a name="output_subnet_service_names"></a> [subnet\_service\_names](#output\_subnet\_service\_names) | Contains a list of the resource name of the azuer reserved subnets |
| <a name="output_vnet_address_space"></a> [vnet\_address\_space](#output\_vnet\_address\_space) | Conatins a list of address spaces of the virtual network |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | Specifies the resource id of the virtual network |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | Specifies the name of the virtual network |

## Example

```hcl
module "vnetdata" {
  source = "./module"

  resource_group_name = "MyVnetResourceGroupName"
  vnet_name           = "MyVnetName"
  subnets = [
    { name : "MySubnetName_1" },
    { name : "MySubnetName_1" },
    { name : "MySubnetName_3" }
  ]
}
```


<!-- END_TF_DOCS -->
## Authors

Originally created by [Patrick Hayo](http://github.com/patrickhayo)

## License

[MIT](LICENSE) License - Copyright (c) 2022 by the Author.

module "vnetdata" {
  source = "./module"

  resource_group_name = "MyVnetResourceGroupName"
  vnet_name           = "MyVnetName"
  subnets = [
    { name : "MySubnetName_1" },
    { name : "MySubnetName_2" },
    { name : "MySubnetName_3" }
  ]
}

resource_group_name = "rg-rllunar-dvfinlab"
create_resource_group = true
vnet_name                    = "vnetrllunartfexercise07"
address_space           = ["10.0.0.0/16"]
owner_tag                   = "roylunar_EJE7"
environment_tag             = "pro"
vnet_tags                   = {
  "modules" = "GitHub"
}
subnets = [
  { name = "subnet1", address_prefix = "10.0.2.0/24" },
  { name = "subnet2", address_prefix = "10.0.3.0/24" },
]
resource_group_name         = "rg-rllunar-dvfinlab"
vnet_name                   = "vnetrllunartfexercise04"
address_space               = ["10.0.0.0/16"]
owner_tag                   = "roylunar"
environment_tag             = "dev"
vnet_tags                   = {
  "enterprise" = "Stemdo"
}
subnets = [
    { name = "subnet1", address_prefix = "10.0.2.0/24" },
    { name = "subnet2", address_prefix = "10.0.3.0/24" }
]
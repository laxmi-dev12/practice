
rg = {
  rg1 = {
    name     = "rg1"
    location = "East US"
  }
}

vnet = {
  vnet1 = {
    name                = "vnet1"
    address_space       = ["10.0.0.0/16"]
    location            = "East US"
    resource_group_name = "rg1"
  }
}

subnet = {
  subnet1 = {
    name                 = "subnet1"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
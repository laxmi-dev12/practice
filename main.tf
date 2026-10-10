module "rg" {
  source = "./rg"
  rgs    = var.rg
}

module "vnet" {
  source     = "./vnet"
  vnets      = var.vnet
  depends_on = [module.rg]
}

module "subnet" {
  source     = "./subnet"
  subnets    = var.subnet
  vnets      = var.vnet
  depends_on = [module.vnet]
}
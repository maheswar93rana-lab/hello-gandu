module "rgs" {
    source = "../child_module/azurerm_rg"
    rgs    = var.rgs
}

module "azurerm_vnet" {
    depends_on = [module.rgs]
    source     = "../child_module/azurerm_vnet"
    vnets      = var.vnets
}

module "azurerm_subnet" {
    depends_on = [module.azurerm_vnet]
    source     = "../child_module/azurerm_subnet"
    subnets    = var.subnets
}
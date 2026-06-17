resource "azurerm_resource_group" "rgs" {
    name = "dev-rg2231"
    location  = "centralindia"
}

resource "azurerm_storage_account" "stacc" {
    depends_on = [azurerm_resource_group.rgs]
    name = "storaccparv3321"
    location = "centralindia"
    resource_group_name = "dev-rg2231"
    account_tier = "Standard"
    account_replication_type = "LRS"
}
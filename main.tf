resource "azurerm_resource_group" "rgs" {
    name = "dev-rg22312"
    location  = "centralindia"
}

resource "azurerm_storage_account" "stacc" {
    depends_on = [azurerm_resource_group.rgs]
    name = "storaccparv33212"
    location = "centralindia"
    resource_group_name = "dev-rg22312"
    account_tier = "Standard"
    account_replication_type = "LRS"
}
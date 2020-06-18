provider "azurerm" {
  version = "1.27.0"
}

resource "azurerm_resource_group" "esp" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

resource "azurerm_sql_server" "esp" {
  name                         = "eshipplus-sqlserver1"
  resource_group_name          = "${azurerm_resource_group.esp.name}"
  location                     = "East US"
  version                      = "12.0"
  administrator_login          = "eshipplus"
  administrator_login_password = "abcdefgh@12345678"
}

resource "azurerm_sql_database" "esp" {
  name                = "eshipplus-sqldatabse1"
  resource_group_name = "${azurerm_resource_group.esp.name}"
  location            = "East US"
  server_name         = "${azurerm_sql_server.esp.name}"
  }

resource "azurerm_sql_server" "esp1" {
  name                         = "eshipplus-sqlserver2"
  resource_group_name          = "${azurerm_resource_group.esp.name}"
  location                     = "East US"
  version                      = "12.0"
  administrator_login          = "eshipplus"
  administrator_login_password = "abcdefgh@12345678"
}

resource "azurerm_sql_database" "esp1" {
  name                = "eshipplus-sqldatabse2"
  resource_group_name = "${azurerm_resource_group.esp.name}"
  location            = "East US"
  server_name         = "${azurerm_sql_server.esp1.name}"
}
resource "azurerm_sql_server" "esp2" {
  name                         = "eshipplus-sqlserver3"
  resource_group_name          = "${azurerm_resource_group.esp.name}"
  location                     = "East US"
  version                      = "12.0"
  administrator_login          = "eshipplus"
  administrator_login_password = "abcdefgh@12345678"
}

resource "azurerm_sql_database" "esp2" {
  name                = "eshipplus-sqldatabse3"
  resource_group_name = "${azurerm_resource_group.esp.name}"
  location            = "East US"
  server_name         = "${azurerm_sql_server.esp2.name}"
}

output "subnet_ids" {
  value = {
    for subnet in azurerm_subnet.subnets : subnet.name => subnet.id
    } 

}
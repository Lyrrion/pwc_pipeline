variable "resource_group" {
    description = "This is code for resource group" 
    type = map(object({
         name = string
         location = string
    }))
}
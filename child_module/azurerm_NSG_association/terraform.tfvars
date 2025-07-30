subnet_nsg_map = {
  "frontend-association" = {
    subnet_key = "frontend_1"
    nsg_key    = "nsg_frontend_1"
  }
  "backend-association" = {
    subnet_key = "backend_1"
    nsg_key    = "nsg_backend_1"
  }

    "frontend-association-2" = {
        subnet_key = "frontend_2"
        nsg_key    = "nsg_frontend_2"
    }
    "backend-association-2" = {
        subnet_key = "backend_2"
        nsg_key    = "nsg_backend_2"
    }
}

 
variable "run_id" {
  default = "run_id_1"
  sensitive = true
}

variable "sleep_time" {
  default = 30
}

variable "dynatrace-operator_enabled" {
  description = "dynatrace-operator_enabled" 

type = bool 
  default = true
  
}


resource "null_resource" "resource3" {
  #count = 5
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
 }
}

variable "cidr_vpc" {
  description = "Cidr block para vpc"   
  type = string
}

variable "cidr_subnet" {
  description = "Cidr block par subnet"
  type = string
}

variable "enviroment" {
  description = "Ambiente onde o recurso vai ser utilizado"
  type = string
}
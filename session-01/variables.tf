variable "sg_name" {
  type    = string
  default = "roboshop-all-aws"
}

variable "sg_description" {
  type    = string
  default = "Allow TLS inbound traffic"
}

variable "inbound_traffic" {
  #type    = number
  default = 0
  # 443 is standard for TLS/HTTPS. Use 22 for SSH, 80 for HTTP, etc.
}

variable "outbound_traffic" {
  #type    = number
  default = 0
  # You can safely use 0 here if you're allowing all traffic (protocol = "-1")
}

variable "cidr_blocks" {
  #type    = list(string)
  default = ["0.0.0.0/0"]
}

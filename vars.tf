variable "ami" {
  description = "ami id"
  type        = list(string)
  default     = ["ami-02f3f602d23f1659d", "ami-0557a15b87f6559cf", "ami-09cd747c78a9add63", "ami-0263e4deb427da90e"]
}

variable "instance_type" {
  description = "size of intstance"
  type        = list(string)
  default     = ["t2.micro", "t2.micro", "t2.micro", "t2.medium"]
}

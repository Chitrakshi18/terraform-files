variable "instances"{
  type = map
  default={
    instance1 = {
	  ami = "ami-0287a05f0ef0e9d9a"
	  instance_type = "t2.micro"
	},
	instance2 = {
	  ami = "ami-0287a05f0ef0e9d9a"
	  instance_type = "t2.micro"
	}
	}
}

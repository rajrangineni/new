provider "aws" {
    region = "ap-south-1"
  
}


resource "aws_instance" "lifecycle" {
    instance_type = var.instance_type
    ami = var.ami_id
    key_name = var.key_name
    tags = {
      Name = "raj"
    }


lifecycle {
     ignore_changes = all
   } 

}


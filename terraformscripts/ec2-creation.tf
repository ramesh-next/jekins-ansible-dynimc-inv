provider "aws"{
   region  = "ap-south-1" 
   
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 1
     ami     =  "ami-069d9fecd19e7ed40"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-21"]
     key_name        = "linux"
     tags = {
        Name = "tomcat"
     }
}


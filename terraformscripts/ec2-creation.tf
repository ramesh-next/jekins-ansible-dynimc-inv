provider "aws"{
   region  = "ap-southeast-1" 
   
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 1
     ami     =  "ami-069d9fecd19e7ed40"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-2"]
     key_name        = "linux"
     tags = {
        Name = "tomcatserver"
     }
}


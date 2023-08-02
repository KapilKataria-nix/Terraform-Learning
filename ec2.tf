#Creating an S3 bucket

#resource "aws_s3_bucket" "mytfbucket" {
#    bucket = "terra-buck-1209"
#}

#Creating an EC2 Instance
resource "aws_instance" "web" {
    ami = "ami-0b9ecf71fe947bbdd"
    count = 3
    instance_type = var.size
    #depends_on = [ aws_s3_bucket.mytfbucket ]
    
    tags = {
        Name = "Terraform_i-${count.index+1}"
    }
}
/*
Provisioners: These are command line script that execute on a local or remote machine during the time of creation or destruction.
-->There are 3-types of provisioner: 
    1.File Provisioner : File provisioner is used to copy files or directories to a remote resource. 
    2.Local-exec  Provisioner : provisioner helps run a script on instances where are we running our terraform code, not on the resource we are creating.     
    3.Remote-exec Provisioner : helps  invoke a script  on remote resource on the remote resource once it is created.
    Requires access : to the remote resource via SSH or WinRM, 
    Learn more 
*/


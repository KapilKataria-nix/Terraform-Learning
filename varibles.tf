variable "size" {
    default = "t2.micro"
    description = "This is new instance"
    
}
 output "public_ip" {
    value = aws_instance.web[1].public_ip
   
 }

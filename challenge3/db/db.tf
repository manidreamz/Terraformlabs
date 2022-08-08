resource "aws_instance" "db" {
    ami = "ami-032598fcc7e9d1c7a"
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}
//add changes to etl
output "PrivateIP" {
    value = aws_instance.db.private_ip
}
// adding for dev
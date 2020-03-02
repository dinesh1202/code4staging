
resource "aws_instance" "mapinst" {

count = "${var.inst_count}"

ami = "${lookup(var.ami_type,var.region)}"

instance_type = "${lookup(var.inst_type,var.env)}"

tags = {
    Name = "${var.env}_server_${count.index}"
   }
}

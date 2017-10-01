output "vpc_id" {
  description = "vpc id for resource"
  value = "${aws_vpc.mod.id}"
}

output "public_subnets" {
  description = "list of public subnets created for the resource"
  value = ["${aws_subnet.public.*.id}"]
}

output "igw_id" {
  description = "igw id for the public subnets"
  value = "${aws_internet_gateway.mod.id}"
}

output "public_route_table_ids" {
  description = "list of public route table ids created for the resource"
  value = ["${aws_route_table.public.*.id}"]
}

output "private_subnets" {
  description = "list of private subnets created for the resource"
  value = ["${aws_subnet.private.*.id}"]
}

output "natgw_ids" {
  description = "list of nat-gws for private subnets"
  value = ["${aws_nat_gateway.natgw.*.id}"]
}

output "nat_eips" {
  description = "private ips for net-gws"
  value = ["${aws_eip.nateip.*.id}"]
}

output "nat_eips_public_ips" {
  description = "public ips for net-gws"
  value = ["${aws_eip.nateip.*.public_ip}"]
}

output "private_route_table_ids" {
  description = "list of private route table ids created for the resource"
  value = ["${aws_route_table.private.*.id}"]
}

output "database_subnets" {
  description = "list of database subnets created for the resource"
  value = ["${aws_subnet.database.*.id}"]
}

output "database_subnet_group" {
  description = "list of database subnet groups created for the resource"
  value = "${aws_db_subnet_group.database.id}"
}

output "elasticache_subnets" {
  description = "list of elasticache subnets created for the resource"
  value = ["${aws_subnet.elasticache.*.id}"]
}

output "elasticache_subnet_group" {
  description = "list of elasticache subnet groups created for the resource"
  value = "${aws_elasticache_subnet_group.elasticache.id}"
}

output "default_security_group_id" {
  description = "list of security group ids created for the resource if defined"
  value = "${aws_vpc.mod.default_security_group_id}"
}

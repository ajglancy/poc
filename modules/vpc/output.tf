output "vpc_id" {
  value = "${aws_vpc.dev-vpc.id}"
}
output "public_subnets" {
  description = "IDs of the created private subnets"
  value       = aws_subnet.dev-subnet-public.*.id
}
output "private_subnets" {
  description = "IDs of the created private subnets"
  value       = aws_subnet.dev-subnet-private.*.id
}

output "azs" {
    value = data.aws_availability_zones.azs.names
}

output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnets_ids"{
    value = aws_subnets.public[*].id
}

output "private_subnets_ids"{
    value = aws_subnets.private[*].id
}

output "database_subnets_ids"{
    value = aws_subnets.database[*].id
}


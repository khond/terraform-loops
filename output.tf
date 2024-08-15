// Print all details
output "created_iam_users_all" {
  value = aws_iam_user.users
}

//Print only ID of users
output "created_iam_users_ids" {
  value = aws_iam_user.users[*].id
}

// Print nice MAP of InstanceID: PublicIP
output "server_all" {
  value = {
    for server in aws_instance.servers :
    server.id => server.public_ip // "i-0490f049844513179" = "99.79.58.22"
  }
}

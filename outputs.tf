output "west_main_ip_addr" {
  value       = vultr_instance.west-main.main_ip
  description = "West coast initial control node IP."
}

output "west-second_ip_addr" {
  value       = vultr_instance.west-second.main_ip
  description = "West second node IP address."
}

output "west_main_ip_addr" {
  value       = vultr_instance.east-main.main_ip
  description = "West coast initial control node IP."
}

output "west-second_ip_addr" {
  value       = vultr_instance.east-second.main_ip
  description = "West second node IP address."
}

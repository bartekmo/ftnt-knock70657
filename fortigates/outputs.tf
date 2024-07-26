/* 
output "fgtha" {
    value = module.fgtha
} 
*/

output "mgmt_eips" {
    value = module.fgtha.fgt_mgmt_eips
}

output "default_password" {
    value = module.fgtha.fgt_password
}
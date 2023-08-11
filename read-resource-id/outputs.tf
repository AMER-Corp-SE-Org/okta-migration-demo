#Outputs.tf 

#Group IDs
output "group1-id" {
  value = data.okta_group.group-1.id
}
output "group2-id" {
  value = data.okta_group.group-2.id
}

#User IDs
output "user1-id" {
  value = data.okta_user.user-1.id
}
output "user2-id" {
  value = data.okta_user.user-2.id
}
output "user3-id" {
  value = data.okta_user.user-3.id
}
output "user4-id" {
  value = data.okta_user.user-4.id
}
output "user5-id" {
  value = data.okta_user.user-5.id
}

#App ID's
output "google-workspace-id" {
  value = data.okta_app.google-workspace.id
}
output "salesforce-id" {
  value = data.okta_app.salesforce.id
}
output "zendesk-id" {
  value = data.okta_app.zendesk.id
}

# Auth Policy ID's
output "policy1-id" {
  value = data.okta_policy.policy-1.id
}
output "policy2-id" {
  value = data.okta_policy.policy-2.id
}
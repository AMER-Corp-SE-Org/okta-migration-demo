# OKTA-MIGRATION-DEMO

The goal of this demo is to show how to import an existing Okta environment into a terraform state file and create configuration code to match.

The Okta resources this repo imports:
- Users
- Groups
- Apps
- Policies

More specifically we are importing:
* Users:
  * User 1
  * User 2
  * User 3
  * User 4
  * User 5
* Groups:
  * Group 1
  * Group 2
* Apps:
  * Google Workspace
  * Salesforce
  * Zendesk


# Overview of Demo
1. Use Data Blocks to read okta resource id's. This is done in read-resource-id/data-blocks.tf
  * The reason why we have to do this is because Okta does not display the ID's in their GUI. The only way to access them is via the Okta API.
  * Some alternative methods are:
    * Postman: interface for creating, sending, and managing API requests
    * Rockstar Chrome Extension: Allows you to export groups to csv, make API calls directly from browser, and a few other features.  https://chrome.google.com/webstore/detail/rockstar/chjepkekmhealpjipcggnfepkkfeimbd/related
2. Once the id's are known they were put in okta-terraform/import.tf import blocks
  * The ID's need to be provided in plain text, they cannot reference a data block.
3. In order to create the configuration blocks for the resources you are importing, run this command:
  ```terraform plan -generate-config-out=generated_resources.tf```
4. After that just run a terraform apply so that the resources get imported into the state file
  ```terraform apply```
5. Lastly, run another terraform plan to show that no changes will be made and that terraform and the resources already in existence are on the same page
  ```terraform apply```

# How to run Demo

1. Clone Repo onto local machine!
2. Change Directories into Okta-Terraform
```
cd okta-terraform
```
3. Run Terraform Plan with Generate Config Out Flag
```
terraform plan -generate-config-out=generated_resources.tf
```
4. Run Terraform Apply to import into state file
```
terraform apply
```
5. Run a plan to ensure that resources were imported correctly and that no changes need to be made
```
terraform plan
```
6. Clean Up (needed to get rid of resources from state file so it is ready to be imported next time):  
```
terraform state rm "okta_app_saml.google-workspace" ;
terraform state rm "okta_app_saml.salesforce" ;
terraform state rm "okta_app_saml.zendesk" ;
terraform state rm "okta_group.group1" ;
terraform state rm "okta_group.group2" ;
terraform state rm "okta_policy_signon.policy1" ;
terraform state rm "okta_policy_signon.policy2" ;
terraform state rm "okta_user.user1" ;
terraform state rm "okta_user.user2" ;
terraform state rm "okta_user.user3" ;
terraform state rm "okta_user.user4" ;
terraform state rm "okta_user.user5" ;
```

# Tips & Tricks
1. Make sure credentials for Okta org are attached to the workspace in TFC

# Resources Used
* How I created extra email accounts:
https://www.eringibson.co/how-to-create-unlimited-testing-accounts-with-the-gmail-hack/#:~:text=Here's%20how%20simple%20it%20is,hello%2Btesting%40mydomain.com

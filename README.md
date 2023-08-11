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


# Tips & Tricks
1. Make sure credentials for Okta org are attached to the workspace in TFC

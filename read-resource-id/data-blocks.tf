# Data blocks to read the resource ID's for import

#Groups
data "okta_group" "group-1" {
  name = "Group 1"
}

data "okta_group" "group-2" {
  name = "Group 2"
}

#Users
data "okta_user" "user-1" {
  search {
    name  = "profile.firstName"
    value = "User"
  }

  search {
    name  = "profile.lastName"
    value = "1"
  }
}

data "okta_user" "user-2" {
  search {
    name  = "profile.firstName"
    value = "User"
  }

  search {
    name  = "profile.lastName"
    value = "2"
  }
}

data "okta_user" "user-3" {
  search {
    name  = "profile.firstName"
    value = "User"
  }

  search {
    name  = "profile.lastName"
    value = "3"
  }
}

data "okta_user" "user-4" {
  search {
    name  = "profile.firstName"
    value = "User"
  }

  search {
    name  = "profile.lastName"
    value = "4"
  }
}

data "okta_user" "user-5" {
  search {
    name  = "profile.firstName"
    value = "User"
  }

  search {
    name  = "profile.lastName"
    value = "5"
  }
}

#Apps
data "okta_app" "google-workspace" {
  label = "Google Workspace"
}

data "okta_app" "salesforce" {
  label = "Salesforce.com"
}

data "okta_app" "zendesk" {
  label = "Zendesk"
}

#Auth Policies
data "okta_policy" "policy-1" {
  name = "Policy-1"
  type = "ACCESS_POLICY"
}

data "okta_policy" "policy-2" {
  name = "Policy-2"
  type = "ACCESS_POLICY"
}
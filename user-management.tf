# user-management.tf

# Data source to get information about a GitHub user
data "github_user" "example_user" {
  username = "Stux0day"
}

# Add the user as a collaborator to the repository
resource "github_repository_collaborator" "example_collaborator" {
  repository = "terraformlab" # Changed to match the repository name in branch.tf
  username   = data.github_user.example_user.username
  permission = "push"
}

# Add a user to the organization (Uncomment and modify as needed)
# resource "github_membership" "membership_for_some_user" {
#   username = "SomeUser"
#   role     = "member"
# }

# resource "github_membership" "membership_for_another_user" {
#   username = "AnotherUser"
#   role     = "member"
# }

# Create a team (Uncomment and modify as needed)
# resource "github_team" "some_team" {
#   name        = "SomeTeam"
#   description = "Some cool team"
# }

# Add members to a team (Uncomment and modify as needed)
# resource "github_team_members" "some_team_members" {
#   team_id  = github_team.some_team.id

#   members {
#     username = "SomeUser"
#     role     = "maintainer"
#   }

#   members {
#     username = "AnotherUser"
#     role     = "member"
#   }
# }

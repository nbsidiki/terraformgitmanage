resource "github_branch" "development" {
  repository = "terraformlab"
  branch     = "development"
}

resource "github_branch" "master" {
  repository = "terraformlab"
  branch     = "master"
}
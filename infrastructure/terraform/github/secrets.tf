
resource "github_actions_secret" "app_id_secret" {
  repository      = github_repository.repo.name
  secret_name     = "BOT_APP_ID"
  encrypted_value = data.sops_file.github.data["app_id"]
}

resource "github_actions_secret" "app_id_private_key" {
  repository      = github_repository.repo.name
  secret_name     = "BOT_APP_PRIVATE_KEY"
  encrypted_value = data.sops_file.github.data["app_private_key"]
}

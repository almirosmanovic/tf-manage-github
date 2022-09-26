variable "github_token" {
  default = "my_token"
    type = string

}
variable "repository_list" {
  default = ["tf-manage-github", "tf-manage-repo"]
    type = list
}
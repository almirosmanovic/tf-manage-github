terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.3.0"
    }
  }
}

provider "github" {
  token = var.github_token
}   

resource "github_repository_file" "name" {
  count = length(var.repository_list)
  repository = var.repository_list[count.index]
  file = "./License"
    content = "The MIT License is a permissive free software license originating at the Massachusetts Institute of Technology (MIT)[6] in the late 1980s.[7] As a permissive license, it puts only very limited restriction on reuse and has, therefore, high license compatibility.[8][9] The MIT License is compatible with many copyleft licenses, such as the GNU General Public License (GNU GPL). Any software licensed under the terms of the MIT License can be integrated with software licensed under the terms of the GNU GPL.[10] Unlike copyleft software licenses, the MIT License also permits reuse within proprietary software, provided that all copies of the software or its substantial portions include a copy of the terms of the MIT License and also a copyright notice.[9][11] As of 2020, the MIT License was the most popular software license found in one analysis,[12] continuing from reports in 2015 that the MIT License was the most popular software license on GitHub."
    commit_message = "Add License"
    commit_author = "Terraform user"
    commit_email = "user_name"
    overwrite_on_create = true
}
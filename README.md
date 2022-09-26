# tf-manage-github


Simple terraform script with GitHub provider, 

Add custom-file in this example License file against multiple repository defined in the list.

modify veriables.tf 


- variables.tf

add github token [string]
add list of repos [list] 

- run

terraform init
terraform plan
terraform apply -y

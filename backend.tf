terraform {
  backend "azurerm" {
    #use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    #use_azuread_auth     = true                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
    #tenant_id            = "2e7f647a-a588-46d0-a204-f586c727d181"  # Can also be set via `ARM_TENANT_ID` environment variable.
    #client_id            = "976bc526-b441-499e-8e08-7b75e2ed3a07"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    resource_group_name = "TerraformLab"
    storage_account_name = "tfstoragevkl"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "adoiactf"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

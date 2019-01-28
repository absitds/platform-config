###############################################################################
#                               Documentation                                 #
###############################################################################
#                                                                             #
# Description                                                                 #
#     :                                                                       #
#                                                                             #
#                                                                             #
###############################################################################
#                           Terragrunt Configuration                          #
###############################################################################

terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an azure bucket
  remote_state {
    backend = "azurerm"
    config {
      storage_account_name  = "itdsdopswustfsa"
      container_name        = "itds-dops-wus-tf-state"
      arm_client_id         = "3d15beb5-6008-4541-b75b-9a2d893d1875"
      arm_subscription_id   = "caa8382f-b56d-4198-acd4-e29f5221ae99"
      arm_client_secret     = "wXMImh/t43LBNJYpTLq5HZB1zMBBQzNHPTgm2Bu8HDo="
      arm_tenant_id         = "b7f604a0-00a9-4188-9248-42f3a5aac2e9"
      key                   = "${path_relative_to_include()}/terraform.tfstate"
      resource_group_name   = "itds-dops-wus-tf-rg"
    }
  }

  # Configure root level variables that all resources can inherit
  terraform {
    extra_arguments "common_vars" {
      commands = ["${get_terraform_commands_that_need_vars()}"]
      optional_var_files = [
          "${get_tfvars_dir()}/${find_in_parent_folders("common.tfvars")}"
      ]
    }
  }
}


################################################################################
#                                     End                                      #
################################################################################
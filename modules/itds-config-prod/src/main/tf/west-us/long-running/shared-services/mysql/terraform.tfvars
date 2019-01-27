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
  # Terragrunt will copy the Terraform configurations specified by the source
  # parameter, along with any files in the working directory, into a temporary
  # folder, and execute Terraform commands in that folder.
  terraform {
    source = "git@github.com:ATLAS-IS/ITDS-config.git//modules/itds-config-modules/src/main/tf/long-running/shared-services/mysql?ref=master"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

################################################################################
#                          Terraform Module Variables                          #
################################################################################


shsrv_srv_msql_adm_usr = "itdsdevwusadmin"

shrd_srv_msql = {
  msql_version = "5.7"
  msql_sku_name = "GP_Gen5_8"
  msql_sku_capacity = "8"
  msql_sku_tier = "GeneralPurpose"
  msql_sku_fam = "Gen5"
  msql_strg_mb = "2048000"
  msql_bkup_ret_dys = "7"
  msql_geo_red_bkup = "Disabled"
}


################################################################################
#                                     End                                      #
################################################################################
#!/bin/bash

# Function to run a license command and check its success
run_command() {
  echo "Running: $1"
  eval "$1"
  if [ $? -ne 0 ]; then
    echo "Error: Command failed - $1"
    exit 1
  fi
}

# cPanel License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) cPanel"
run_command "RcLicenseCP"
run_command "RcLicenseCP -fleetssl"
run_command "RcLicenseCP -install-ssl-service"
run_command "/usr/local/cpanel/scripts/install_lets_encrypt_autossl_provider"
run_command "touch /etc/.verifylicense"
run_command "RcLicenseCP"

# LiteSpeed License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) liteSpeed"
run_command "RcLicenseLSWS"

# CloudLinux License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) CloudLinux"
run_command "RcLicenseCLN"

# Imunify360 License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) Imunify360"
run_command "RcLicenseImunify360"

# Softaculous License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) Softaculous"
run_command "RcLicenseSoftaculous"

# SitePad License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) Sitepad"
run_command "RcLicenseSitepad"

# JetBackup License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) JetBackup"
run_command "RcLicenseJetBackup"

# WHMReseller License Install
run_command "bash <(curl -s https://mirror.resellercenter.ir/pre.sh) WHMReseller"
run_command "RcLicenseWHMReseller"

echo "All tasks completed successfully."

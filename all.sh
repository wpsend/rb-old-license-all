#!/bin/bash

# Start the script
echo "Starting the installation process..."

# cPanel Installation
echo "Running cPanel installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) cPanel
RcLicenseCP
RcLicenseCP -fix
RcLicenseCP -fix
RcLicenseCP -fleetssl
RcLicenseCP -install-ssl-service
/usr/local/cpanel/scripts/install_lets_encrypt_autossl_provider
touch /etc/.verifylicense
RcLicenseCP

# LiteSpeed Installation
echo "Running LiteSpeed installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) liteSpeed
RcLicenseLSWS

# CloudLinux Installation
echo "Running CloudLinux installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) CloudLinux
RcLicenseCLN

# Imunify360 Installation
echo "Running Imunify360 installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) Imunify360
RcLicenseImunify360

# Softaculous Installation
echo "Running Softaculous installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) Softaculous
RcLicenseSoftaculous

# Sitepad Installation
echo "Running Sitepad installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) Sitepad
RcLicenseSitepad

# JetBackup Installation
echo "Running JetBackup installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) JetBackup
RcLicenseJetBackup

# WHMReseller Installation
echo "Running WHMReseller installation..."
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) WHMReseller
RcLicenseWHMReseller

echo "All installations have been completed successfully!"

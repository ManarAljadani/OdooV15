#!/bin/bash

# Install Odoo V16
# Prepare needs:
# 1. Python
# 2. PostgreSQL
# 3. Dependencies
#   3.1. requirements.txt
#   3.2. wkhtmltopdf
#   3.3. Node.js & npm
#     3.3.1. rtlcss
#  4. Run Odoo  
# https://www.odoo.com/documentation/15.0/administration/install/install.html#setup-install-source-linux

#------------------------------------------------System configuration-------------------------------------------------|
# $USER="forcodes"                                                                                                    |
# LONGPOLLING_PORT="8072" [for LiveChat]                                                                              |


echo "#---------------------------------------------------------------------------------------------------------------------|"
echo "#                                                                                                                     |"
echo "#                                    U P D A T E    &     U P G R A D E   S E R V E R                                 |"
echo "#                                                                                                                     |"
echo "#---------------------------------------------------------------------------------------------------------------------|"

sudo apt-get update
sudo apt-get upgrade

echo "#---------------------------------------------------------------------------------------------------------------------|"
echo "#                                                                                                                     |"
echo "#                                        I N S T A L L I N G   G I T                                                  |"
echo "#                                                                                                                     |"
echo "#---------------------------------------------------------------------------------------------------------------------|"
sudo apt-get install git

echo "#---------------------------------------------------------------------------------------------------------------------|"
echo "#                                                                                                                     |"
echo "#                                        I N S T A L L I N G   P Y T H O N                                            |"
echo "#                                                                                                                     |"
echo "#---------------------------------------------------------------------------------------------------------------------|"
echo "Installing Python"
# Install Python3
sudo apt-get install python3

# Install pip3
sudo apt-get install -y python3-pip

echo "#---------------------------------------------------------------------------------------------------------------------|"
echo "#                                                                                                                     |"
echo "#                                        I N S T A L L I N G   P O S T G R E S Q L                                    |"
echo "#                                                                                                                     |"
echo "#---------------------------------------------------------------------------------------------------------------------|"
sudo apt install postgresql postgresql-client

# Create a new PostgreSQL user
sudo -u postgres createuser -s $USER
createdb $USER



echo "----------------------------------------------------"
echo "Installing Dependencies"
echo "----------------------------------------------------"
sudo apt install python3-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libtiff5-dev libjpeg8-dev libopenjp2-7-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev libxcb1-dev libpq-dev

# Install Node.js
echo "Installing Node.js"
sudo apt install nodejs npm

# Install rtlcss [To support languages with right-to-left interface]
echo "Installing rtlcss [To support languages with right-to-left interface]"
sudo npm install -g rtlcss


# Install requirements.txt
echo "Installing requirements.txt"
sudo pip3 install setuptools wheel
sudo pip3 install -r requirements.txt


echo "|---------------------------------------------------------------------------------------------------------------------|"
echo "|                                                                                                                     |"
echo "|                                          I N S T A L L I N G   O d o o                                              |"
echo "|                                                                                                                     |"
echo "|---------------------------------------------------------------------------------------------------------------------|"

sudo git clone https://github.com/odoo/odoo.git --depth=1 -b 16.0










echo "|---------------------------------------------------------------------------------------------------------------------|"
echo "|                                                                                                                     |"
echo "|                                        I N S T A L L I N G   I N G I N X                                            |"
echo "|                                                                                                                     |"
echo "|---------------------------------------------------------------------------------------------------------------------|"

sudo apt install nginx


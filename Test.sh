#!/bin/bash

# Install Odoo V16


#----------------------------------------------------
# Update Server
#----------------------------------------------------
echo "----------------------------------------------------"
echo "Updating Server"
echo "----------------------------------------------------"
sudo apt-get update
sudo apt-get upgrade


#----------------------------------------------------
# Install Git
#----------------------------------------------------
echo "----------------------------------------------------"
echo "Installing Git"
echo "----------------------------------------------------"
sudo apt-get install git


#----------------------------------------------------
# Install Python
#----------------------------------------------------
echo "----------------------------------------------------"
echo "Installing Python"
echo "----------------------------------------------------"
# Install Python3
sudo apt-get install python3

# Install pip3
sudo apt-get install -y python3-pip


#----------------------------------------------------
# Install PostgreSQL 
#----------------------------------------------------
echo "----------------------------------------------------"
echo "Installing PostgreSQL "
echo "----------------------------------------------------"
# Install PostgreSQL 
sudo apt install postgresql postgresql-client

# Create a new PostgreSQL user
sudo -u postgres createuser -s $USER



#----------------------------------------------------
# Install Dependencies 
#----------------------------------------------------
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


#----------------------------------------------------
# Install Odoo
#----------------------------------------------------
echo "----------------------------------------------------"
echo "Installing Odoo community"
echo "----------------------------------------------------"
sudo git clone https://github.com/odoo/odoo.git --depth=1 -b 16.0



#!/bin/bash
# ********************************************Installing Odoo V16 on Ubuntu 20.04********************************************

# ---------------------------------------
# Update Server
# ---------------------------------------
sudo apt-get update
sudo apt-get upgrade


# Install Git
sudo apt-get install git


#---------------------------------------
#Install Python
#---------------------------------------
# Install Python3
sudo apt-get install python3

# Install pip3
sudo apt-get install -y python3-pip


#---------------------------------------
#Install PostgreSQL
#---------------------------------------
# Install PostgreSQL 
sudo apt install postgresql postgresql-client

# Create a new PostgreSQL user
sudo -u postgres createuser -s $USER
createdb $USER


#---------------------------------------
#Install dependencies 
#---------------------------------------

sudo apt install python3-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libtiff5-dev libjpeg8-dev libopenjp2-7-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev libxcb1-dev libpq-dev

#---------------------------------------
#Install wkhtmltopdf 
#---------------------------------------

# Download the package for X64
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb

# Install the package
sudo dpkg -i wkhtmltox_0.12.5-1.bionic_amd64.deb

# Fix dependencies
sudo apt install -f


#---------------------------------------
#Install Node.JS 
#---------------------------------------
# Install Node.js
sudo apt install nodejs npm

# Install rtlcss [To support languages with right-to-left interface]
sudo npm install -g rtlcss



#---------------------------------------
#Install Odoo
#---------------------------------------
sudo git clone https://github.com/odoo/odoo.git <Add_Location>

#!/bin/bash
# Odoo Enterprise install!    
    #----------------------------------------
    
      sudo apt remove python3-pip
      sudo apt-get remove python-pip-whl
      sudo apt install python3-pip
      #sudo reboot

      sudo su $OE_USER -c "mkdir $OE_HOME/enterprise"
      sudo su $OE_USER -c "mkdir $OE_HOME/enterprise/addons"

      GITHUB_RESPONSE=$(sudo git clone --depth 1 --branch $OE_VERSION <https://www.github.com/odoo/enterprise> "$OE_HOME/enterprise/addons" 2>&1)

      sudo apt-get update -y
      #sudo reboot
      
      echo -e "\n---- Installing Enterprise specific libraries ----"
      sudo -H pip3 install num2words ofxparse dbfread ebaysdk firebase_admin pyOpenSSL
      #sudo reboot

      sudo apt-get install -y python3-testresources
      #sudo reboot
      
      echo -e "\n---- Added Enterprise code under $OE_HOME/enterprise/addons ----"
      sudo npm install -g less
      #sudo reboot
      sudo npm install -g less-plugin-clean-css
      #sudo reboot
    
    #----------------------------------------
 

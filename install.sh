#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Halt any existing running vms
cd ~/Desktop/symfony.vm
vagrant halt
vagrant destroy --force

# Ensure vm folder exists and is empty
cd ~/Desktop/
rm -rf symfony.vm
mkdir symfony.vm
cd symfony.vm

# Download vagrant file
curl -O https://gist.githubusercontent.com/sameg14/fad40977277a08536b8d/raw/c7d5e24e9e3eb54e04758a40584ba3874c152451/VagrantFile 

# Download and install symfony
curl -LsS http://symfony.com/installer -o symfony.phar
php symfony.phar new symfony2

# Download composer and update packages
cd symfony2
curl -sS https://getcomposer.org/installer | php
php composer.phar update -vvv

# Replace the app_dev.php file, effectively removing the localhost restriction
cp $DIR/app_dev.php ~/Desktop/symfony.vm/symfony2/web/app_dev.php

# Create virtual machine
cd ~/Desktop/symfony.vm
vagrant up

# Open the site in a browser
open http://10.10.10.24

# SSH into new VM
vagrant ssh

#!/usr/bin/env bash

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
curl -O https://raw.githubusercontent.com/sameg14/symfony2-vm/master/VagrantFile

# Download and install symfony
curl -LsS http://symfony.com/installer -o symfony.phar
php symfony.phar new symfony2

# Download composer and update packages
cd symfony2
curl -sS https://getcomposer.org/installer | php
php composer.phar update -vvv

# Create virtual machine
cd ~/Desktop/symfony.vm
vagrant up

# Open the site in a browser
open http://10.10.10.24

# SSH into new VM
vagrant ssh
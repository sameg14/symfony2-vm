# Instructions to install VM (Mac only)

Clone this repo anywhere on your computer and cd into it as such
```bash
cd symfony2-vm
```

Then run the install command as such
```bash
./install.sh
```

If you get any kind of permission error, change permissions and rerun
```bash
sudo chmod a+x install.sh
```

The install script will make a folder on your desktop called `symfony.vm` i.e. `~/Desktop/symfony.vm`

Add the following entries to ```/etc/hosts``` on your mac
```bash
10.10.10.24     symfony2.dev
10.10.10.24     symfony2.prod
```

The VM has both production and development environments configured in apache. 
You can access the environments in your browser with the following URLs:

dev - http://symfony2.dev
prod - http://symfony2.prod
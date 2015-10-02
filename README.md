# Instructions to install VM (Mac only)

#### Install git
Make sure that you have [git](https://git-scm.com/downloads) installed

#### Get the script
Clone this repo anywhere on your computer
```bash
git clone git@github.com:sameg14/symfony2-vm.git
```

cd into the newly created folder
```bash
cd symfony2-vm
```

#### Install
Run the installer, which will make a folder on your desktop called `symfony.vm` i.e. `~/Desktop/symfony.vm` after is completes
```bash
./install.sh
```

#### Add host entries
Add the following entries to ```/etc/hosts``` in order to create local names aliases
```bash
10.10.10.24     symfony2.dev
10.10.10.24     symfony2.prod
```

#### Development and Production URLs
The VM has both production and development environments configured in apache.
You can access the environments in your browser with the following URLs:

dev - http://symfony2.dev
prod - http://symfony2.prod

#### Editing Code
You can edit code directly in the `~/Desktop/symfony.vm/symfony2` folder using your favorite IDE.
The changes that you make will be directly visible in the VM, on the dev environment only.
The prod environment has caching turned on, so it will need a server restart in order to view your changes.

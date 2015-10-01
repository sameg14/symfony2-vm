# Instructions to install VM

```bash
./install.sh
```

The install script will make a folder on your desktop called symfony.vm

The VM has both production and development environments configured in apache. 

Add the following entries to ```/etc/hosts``` on your mac
```bash
10.10.10.24     symfony2.dev
10.10.10.24     symfony2.prod
```

You can access the environments as such:

dev - http://symfony2.dev
prod - http://symfony2.prod
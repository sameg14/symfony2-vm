# Instructions to install VM

```bash
./install.sh
```

The install script will make a folder on your desktop called symfony.vm

Once the install completes, you can visit (http://10.10.10.11)[http://10.10.10.11] in your browser

The VM has both production and development environments configured in apache. 

Add the following entries to ```/etc/hosts``` on your mac
```bash
10.10.10.24     symfony2.dev
10.10.10.24     symfony2.prod
```


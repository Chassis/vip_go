# VIP Go

Adds VIP Go support to Chassis.

We only support PHP 7+ due to WP.com websites being upgraded to PHP 7 recently.

## Installing & Documentation

1. Clone `chassis` i.e.: `git clone --recursive https://github.com/Chassis/Chassis chassis`
1. Change into the directory `cd chassis`
1. Clone the skeleton repository into the `content` folder. e.g. `git clone git@github.com:wpcomvip/yourproject.git content`
1. Create a file called `config.local.yaml` inside the `content` folder.
1. Enter a configuration similar to this:
    ```
   hosts:
     - vip.local
   php: 7.4
   hostsupdater: yes
   extensions:
     - chassis/xdebug
     - chassis/mailhog
     - chassis/sequelpro
     - chassis/phpunit
     - chassis/nodejs
     - chassis/tester
     - chassis/npm
     - chassis/fish
     - chassis/pretty_permalinks
     - chassis/phpmyadmin
     - chassis/vip_go
   permalink: '/%year%/%monthnum%/%day%/%postname%/'
   admin:
     user: yourusername
     email: admin@example.com
     password: password
   synced_folders:
     logs/nginx: /var/log/nginx
     logs/php: /var/log/php
    ```
1. Run `vagrant provision` and wait a few minutes as Chassis will clone the must use plugins for VIP.
1. Go to your frontend URL: [http://vip.local](http://vip.local).
1. Login into your WordPress dashboard: [http://vip.local/wp/wp-admin](http://vip.local/wp/wp-admin/) using the username
and password you specified in the configuration file above.
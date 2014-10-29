#!/usr/bin/env bash

echo ==========================
echo INSTALLING MC
echo ==========================
sudo apt-get install -y mc

echo ==========================
echo INSTALLING GIT
echo ==========================
sudo apt-get install -y git



echo ==========================
echo INSTALLING LAMP
echo ==========================
sudo apt-get install -y lamp-server^

echo ==========================
echo Mcrypt extension
echo ==========================
sudo apt-get install -y php5-mcrypt
sudo php5enmod mcrypt

echo ==========================
echo Intl extension
echo ==========================
sudo apt-get install -y php5-intl

echo ==========================
echo SQLite extension
echo ==========================
sudo apt-get install -y php5-sqlite

echo ==========================
echo PostgreSQL extension
echo ==========================
sudo apt-get install -y php5-pgsql 

echo ==========================
echo Memcache extension
echo ==========================
sudo apt-get install -y php5-memcache

echo ==========================
echo RESTART APACHE
echo ==========================
sudo service apache2 restart



echo ==========================
echo INSTALLING COMPOSER
echo ==========================
cd ~
curl -sS https://getcomposer.org/installer | php
sudo chown -R $USER /usr/local/bin
mv composer.phar /usr/local/bin/composer
composer global require "fxp/composer-asset-plugin:1.0.0-beta3"

echo ==========================
echo GET YII2
echo ==========================
echo PLEASE ENTER THE NAME OF YOUR PROJECT:
read PROJECT
sudo chown -R $USER /var/www
cd /var/www
composer create-project yiisoft/yii2-app-advanced $PROJECT 2.0.0



exit 0
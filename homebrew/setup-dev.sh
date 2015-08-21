#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# install homebrew's official php tap
brew tap josegonzalez/homebrew-php


# install homebrew's official nginx tap
brew tap homebrew/nginx


# install nginx + geoip + upload progress
brew install nginx-full --with-geoip --with-upload-progress-module


# install mysql
brew install mysql


# install php 5.5 + apcu + mcrypt + opcache + solr + xdebug
brew install --with-fpm --with-mysql php55
brew install php55-apcu php55-mcrypt php55-solr php55-xdebug


# install composer globally
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer


# set up mysql to run as user account
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp


# launch mysql on startup
cp `brew --prefix mysql`/homebrew.mxcl.mysql.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist


# launch php-fpm on startup
ln -sfv /usr/local/opt/php55/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php55.plist 


# launch nginx at startup as root (in order to listen on privileged port 80):
sudo cp `brew --prefix nginx`/homebrew.mxcl.nginx.plist /Library/LaunchDaemons/
sudo sed -i -e 's/`whoami`/root/g' `brew --prefix nginx`/homebrew.mxcl.nginx.plist
sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.nginx.plist


echo "
POST-INSTALL PROCEDURE:
=======================
1) configure intellij / netbeans / phpstorm / eclipse pdt to connect to xdebug on port 9009
"

#!/bin/sh

#epel インストール
yum -y install epel-release

#remi インストール
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

#php と必要なモジュールをインストール
yum -y install --enablerepo=remi,epel,remi-php56 php php-devel php-intl php-mbstring php-pdo php-gd php-mysqlnd

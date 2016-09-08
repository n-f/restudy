#!/bin/sh

#MariaDBアンインストール
yum -y remove mariadb-libs.x86_64

#mysqlレポジトリ追加
yum -y install http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm

#yum設定変更のためのパッケージのインストール
yum -y install yum-utils

#mysql5.7を無効
yum-config-manager --disable mysql57-community

#mysql5.6を有効
yum-config-manager --enable mysql56-community

#mysqlインストール
yum -y install mysql-community-server

#mysql起動、自動起動設定
systemctl start mysqld
systemctl enable mysqld

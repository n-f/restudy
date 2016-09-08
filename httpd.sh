#!/bin/sh

#httpdインストール
yum -y install httpd

#httpd起動、自動起動設定
systemctl start httpd
systemctl enable httpd

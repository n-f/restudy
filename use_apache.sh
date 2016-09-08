#!/bin/sh

#シンボリックリンク作成
ln -s /vagrant/cakephp.conf /etc/httpd/conf.d/.

#httpd再起動
systemctl restart httpd

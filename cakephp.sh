#!/bin/sh

#composerを実行するパスに移動
cd /vagrant/test_app/

#composerでcakephpライブラリをインストール
yes | /usr/local/bin/composer.phar install

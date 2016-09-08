#!/bin/sh

mysql -u root -e"
create database vagrant_db;
grant all on vagrant_db.* to vagrant@localhost identified by 'vagrant';
use vagrant_db
create table cakes (
  id int unsigned auto_increment primary key,
    title varchar(255),
	  body text,
	    created datetime default null,
		  modified datetime default null
		  );
insert into cakes (title, body, created) values
('title 1', 'body 1', now()),
('title 2', 'body 2', now()),
('title 3', 'body 3', now());
"

/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaimenik.sql" 
*/

drop database if exists imenik;
create database imenik;
use imenik;


create table kontakt(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50),
broj varchar(32) not null,
vrsta int not null
);


create table vrsta(
sifra int not null primary key auto_increment,
naziv varchar(50)
);

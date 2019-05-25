/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaorganizacija.sql"
*/


drop database if exists organizacija;
create database organizacija default character set utf8;
use organizacija;

create table zaposlenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
odjel int not null,
nadredjeni int not null
);


create table odjel(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
voditelj int not null
);


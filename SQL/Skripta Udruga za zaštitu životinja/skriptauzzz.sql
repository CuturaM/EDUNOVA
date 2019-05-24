/* 
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptauzz.sql"
*/

drop database if exists uzzz1862;
create database uzzz1862 default character set utf8;
use uzzz1862;

create table zaposlenik(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(32) not null,
email varchar(50)
);


create table sticenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50),
zaposlenik int not null,
prostor int not null
);


create table prostor(
sifra int not null primary key auto_increment,
povrsina varchar(50) not null,
grijanje boolean not null
);


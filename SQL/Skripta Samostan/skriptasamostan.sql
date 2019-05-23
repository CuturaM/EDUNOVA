/* 
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptasamostan1862"
*/


drop database if exists samostan1862;
create database samostan1862 default character set utf8;
use samostan1862;

create table svecenik(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(32) not null,
email varchar(100) not null,
nadredjenisvecenik int not null
);


create table posao(
sifra int not null primary key auto_increment,
svecenik int not null,
trajanje int,
vrijeme datetime not null
);


create table vrijeme(
sifra int not null primary key auto_increment,
posao int not null,
svecenik int not null,
pocetak datetime
);



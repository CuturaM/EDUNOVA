/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptafrizerski.sql"
*/

drop database if exists frizerski1862;
create database frizerski1862 default character utf8;
use frizerski1862;

create table zaposlenik(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(50) not null,
email varchar(100)
);


create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
brojtelefona varchar(50),
zaposlenik int not null,
posjet int not null
);


create table posjet(
sifra int not null primary key auto_increment,
usluga varchar(100) not null,
cijena decimal(18,2) not null,
datumpocetka datetime not null
);

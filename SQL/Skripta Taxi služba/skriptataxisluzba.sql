/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptataxisluzba1862.sql"
*/



drop database if exists taxisluzba1862;
create database taxisluzba1862 default character set utf8;
use taxisluzba1862;

create table vozilo(
sifra int not null primary key auto_increment,
model varchar(50) not null,
registracija varchar(15) not null,
tip varchar(50) not null,
brojvrata int not null,
brojsjedala int not null,
boja varchar(50) not null,
vozac int
);


create table vozac(
sifra int not null primary key auto_increment,
osoba int not null,
oib char(11) not null,
iban varchar(32) not null,
email varchar(100)
);


create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
brojtelefona varchar(50) 
);


create table voznja(
sifra int not null primary key auto_increment,
putnik int,
vrijeme int,
cijena decimal(18,2) not null
);


create table vrijeme(
sifra int not null primary key auto_increment,
putnik int not null,
datum datetime not null default now()
);
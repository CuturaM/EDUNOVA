/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaj201862.sql"
*/

drop database if exists edunovaj20;
create database edunovaj20 default character set utf8;
use edunovaj20;

create table smjer(
sifra int,
naziv varchar(50),
trajanje int,
cijena decimal(18,2),
upisnina decimal(18,2),
certificiran boolean
);


create table osoba(
sifra int,
oib char(11),
ime varchar(50),
prezime varchar(50),
email varchar(100)
);


create table polaznik(
sifra int,
osoba int,
brojugovora varchar(20)
);


create table predavac(
sifra int,
osoba int,
iban varchar(32)
);


create table clan(
grupa int,
polaznik int
);


create table grupa(
sifra int,
naziv varchar(50),
smjer int,
predavac int,
datumpocetka datetime
);

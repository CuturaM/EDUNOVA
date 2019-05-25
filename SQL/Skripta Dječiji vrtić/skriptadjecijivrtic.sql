/*
Ova datoteka se nalazi na 
mysql -ucuturam -p --default_character_set_utf8 < "d:\skriptadjecijivrtic.sql"
*/

drop database if exists djecijivrtic1862;
create database djecijivrtic1862 default character set utf8;
use djecijivrtic1862;

create table odgojnaskupina(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
cijena decimal(18,2),
trajanje int not null,
odgajatelj int not null
);


create table odgajatelj(
sifra int not null primary key auto_increment,
osoba int not null,
iban varchar(32),
strucnasprema varchar(100),
email varchar(100)
);


create table dijete(
sifra int not null primary key auto_increment,
osoba int not null,
kontakt varchar(100),
spol varchar(6),
odgojnaskupina int not null
);


create table osoba(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null
);

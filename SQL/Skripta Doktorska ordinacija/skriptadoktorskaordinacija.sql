/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptadoktorskaordinacija18622.sql"
*/




drop database if exists doktorskaordinacija18622;
create database doktorskaordinacija18622 default character set utf8;
use doktorskaordinacija18622;

create table lijecenje(
sifra int not null primary key auto_increment,
pacijent int not null,
datumpocetkalijecenja datetime default now()
);


create table pacijent(
sifra int not null primary key auto_increment,
osoba int not null
);



create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11) not null,
email varchar(100)
);


create table sestra(
sifra int not null primary key auto_increment,
osoba int not null,
iban varchar(32)
);
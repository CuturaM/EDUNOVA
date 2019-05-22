/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaj201862.sql"
*/

drop database if exists edunovaj20;
create database edunovaj20 default character set utf8;
use edunovaj20;

create table smjer(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
trajanje int not null,
cijena decimal(18,2),
upisnina decimal(18,2),
certificiran boolean not null
);


create table osoba(
sifra int primary key auto_increment,
oib char(11),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null
);


create table polaznik(
sifra int not null primary key auto_increment,
osoba int not null,
brojugovora varchar(20)
);


create table predavac(
sifra int not null primary key auto_increment,
osoba int not null,
iban varchar(32)
);


create table clan(
grupa int int not null,
polaznik int int not null
);


create table grupa(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
smjer int not null,
predavac int,
datumpocetka datetime default now()
);


alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

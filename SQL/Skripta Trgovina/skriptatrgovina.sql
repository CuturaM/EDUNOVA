/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptatrgovina"
*/

drop database if exists trgovina;
create database trgovina default character set utf8;
use trgovina;

create table racun(
sifra int not null primary key auto_increment,
datum datetime default now(),
kupac varchar(100)
);


create table stavka(
racun int not null,
proizvod int not null,
kolicina decimal(18,3) not null
);


create table proizvod(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
cijena decimal(18,2) not null
);

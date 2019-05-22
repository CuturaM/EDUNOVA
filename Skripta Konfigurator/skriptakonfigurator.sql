/*  
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptakonfigurator.sql"
*/

drop database if exists konfigurator;
create database konfigurator default character set utf8;
use konfigurator;

create table konfiguracija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis varchar(100),
cijena decimal(18,2)
);


create table dio(
konfiguracija int not null,
komponenta int not null
);


create table komponenta(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis varchar(100),
proizvodjac int not null
);


create table proizvodjac(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
zemlja varchar(50) not null
);
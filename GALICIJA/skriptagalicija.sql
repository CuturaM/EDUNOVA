-- ova datoteka se nalazi na:
-- mysql -ucuturam -p --default_character_set=utf8 < C:\Users\CuturaM\Documents\GitHub\EDUNOVA\GALICIJA\skriptagalicija.sql

drop database if exists galicija;
create database galicija default character set utf8;
use galicija;


create table uplatitelj(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(32) not null,
email varchar(50) not null
);



create table uplata(
sifra int not null primary key auto_increment,
uplatitelj int not null,
kategorija int not null,
vrijemeuplate datetime default now(),
iznosuplate decimal(18,2) not null
);



create table isplatitelj(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
iban varchar(32) not null,
email varchar(100)
);



create table isplata(
sifra int not null primary key auto_increment,
isplatitelj int not null,
kategorija int not null,
vrijemeisplate datetime default now(),
iznosisplate decimal(18,2) not null
);



create table kategorija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);



create table stednja(
sifra int not null primary key auto_increment,
vrijeme datetime default now(),
iznos decimal(18,2) not null
);



create table operater(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
lozinka char(32) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
uloga varchar(50) not null
);

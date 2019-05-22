/* 
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptapostolar1862.sql"
*/

drop database if exists postolar1862;
create database postolar1862 default character set utf8;
use postolar1862;

create table obuca(
sifra int not null primary key auto_increment,
vrsta varchar(50) not null,
boja varchar(50) not null,
materijal varchar(50) not null,
broj decimal(18,2) not null
);


create table popravak(
sifra int not null primary key auto_increment,
obuca int not null,
korisnik int not null,
segrt int,
cijena decimal(18,2) not null
);


create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null ,
prezime varchar(50) not null,
telefon varchar(32) not null,
oib char(11),
iban varchar(32)
);
/* 
Ova datoteka se nalazi na
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptamuzej.sql"
*/


drop database if exists muzej1862;
create database muzej1862 default character set utf8;
use muzej1862;

create table izlozba(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
cijenaulaznice decimal(18,2) not null,
kustos int not null,
sponzor int not null
);


create table dijelo(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
minutaza int not null,
izlozba int not null
);


create table sponzor(
sifra int not null primary key auto_increment,
firma boolean,
nazivfirme varchar(150),
osoba int,
iznosdonacije decimal(18,2) not null
);


create table kustos(
sifra int not null primary key auto_increment,
osoba int not null,
iban varchar(32) not null
);


create table osoba(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100)
);


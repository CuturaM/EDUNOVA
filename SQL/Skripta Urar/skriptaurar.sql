/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaurar1862.sql"
*/

drop database if exists urar1862;
create database urar1862 default character set utf8;
use urar1862;

create table sat(
sifra int not null primary key auto_increment,
vrsta varchar(50) not null,
boja varchar(50) not null,
materijal varchar(50) not null,
proizvodjac varchar(50) not null
);


create table popravak(
sifra int not null primary key auto_increment,
sat int not null,
korisnik int not null,
segrt int,
cijena decimal(18,2) not null
);


create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
telefon varchar(32) not null,
oib char(11),
iban varchar(32)
);


alter table popravak add foreign key (sat) references sat(sifra);
alter table popravak add foreign key (korisnik) references osoba(sifra);
alter table popravak add foreign key (segrt) references osoba(sifra);

insert into sat
(vrsta,boja,materijal,proizvodjac) values
/* 1 */
('Vojni','Smeđa','Titanium','G-Shock'),
/* 2 */
('Dress','Crna','Nehrđajući čelik','Tissot');

insert into osoba
(ime,prezime,telefon,oib,iban) values
/* 1 */
('Ante','Starčević','00385955260000',null,null),
/* 2 */ 
('Pero','Perić','00385915211122',null,null);

insert into popravak
(sat,korisnik,segrt,cijena) values
/* 1 */
(1,1,2,300.00),
/* 2 */
(2,1,null,200.55);
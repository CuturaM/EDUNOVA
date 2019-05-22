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


alter table popravak add foreign key (obuca) references obuca(sifra);
alter table popravak add foreign key (korisnik) references osoba(sifra);
alter table popravak add foreign key (segrt) references osoba(sifra);

insert into obuca 
(vrsta,boja,materijal,broj) values
/* 1 */
('Cipela','Crna','Koža',42.0),
/* 2 */
('Papuča','Plava','Guma',42.5);

insert into osoba
(ime,prezime,telefon,oib,iban) values
/* 1 */
('Ante','Starčević','00385955222722',null,null),
/* 2 */
('Stjepan','Radić','00385911323341','11122211121',null);

insert into popravak
(obuca,korisnik,segrt,cijena) values
/* 1 */
(1,1,2,220.00),
/* 2 */
(2,1,2,55.50);
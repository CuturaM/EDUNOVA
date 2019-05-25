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


alter table odgajatelj add foreign key (osoba) references osoba(sifra);

alter table odgojnaskupina add foreign key (odgajatelj) references odgajatelj(sifra);

alter table dijete add foreign key (osoba) references osoba(sifra);
alter table dijete add foreign key (odgojnaskupina) references odgojnaskupina(sifra);

insert into osoba
(oib,ime,prezime) values
/* 1 */
('32855883549','Ante','Starčević'),
/* 2 */
('85266523210','Stjepan','Radić'),
/* 3 */
('55515186608','Josip','Jelačić'),
/* 4 */
('97379984083','Marko','Marulić'),
/* 5 */
('38156367435','Ivan','Gundulić');

insert into odgajatelj
(osoba,iban,strucnasprema,email) values
/* 1 */
(1,'HR8023400097215226419','SSS','ante.starcevic@gmail.com');

insert into odgojnaskupina
(naziv,cijena,trajanje,odgajatelj) values
/* 1 */
('A',1500.00,200,1);

insert into dijete
(osoba,kontakt,spol,odgojnaskupina) values
/* 1 */
(2,'00385988887777','Muško',1),
/* 2 */
(3,'josip.jelacic@gmail.com','Muško',1),
/* 3 */
(4,'00385950005252','Muško',1),
/* 4 */ 
(5,'00386950054444','Muško',1);

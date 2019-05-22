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


alter table lijecenje add foreign key (pacijent) references osoba(sifra);

alter table pacijent add foreign key (osoba) references osoba(sifra);

alter table sestra add foreign key (osoba) references osoba(sifra);


insert into osoba
(ime,prezime,oib,email) values
/* 1 */
('Petra','Petrić','11111111111','petra.petric@gmail.com'),
/* 2 */
('Ivan','Ivanović','22222222222','ivan.ivanovic@gmail.com'),
/* 3 */
('Marko','Markić','33333333333','marko.markic@gmail.com'),
/* 4 */ 
('Filipa','Filipović','44444444444','filipa.filipovic@gmail.com');

insert into sestra 
(osoba,iban) values
/* 1 */
(1,'HR8624840081102131080'),
/* 2 */
(4,'HR8624840081102336110');

insert into pacijent
(osoba) values
/* 1 */
(2),
/* 2 */
(3);

insert into lijecenje
(pacijent) values
/* 1 */
(2),
/* 2 */ 
(3);
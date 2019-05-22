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


alter table dio add foreign key (konfiguracija) references konfiguracija(sifra);
alter table dio add foreign key (komponenta) references komponenta(sifra);

alter table komponenta add foreign key (proizvodjac) references proizvodjac(sifra);


insert into proizvodjac 
(naziv,zemlja) values
/* 1 */
('Intel','USA'),
/* 2 */
('NVIDIA','USA');

insert into komponenta
(naziv,opis,proizvodjac) values
/* 1 */
('Procesor',null,1),
/* 2 */
('Matična ploča',null,1),
/* 3 */
('Napajanje',null,1),
/* 4 */
('RAM',null,1),
/* 5 */
('Grafička kartica',null,2);

insert into konfiguracija
(naziv,opis,cijena) values
/* 1 */
('Office',null,null),
/* 2 */
('Multimedia',null,null),
/* 3 */
('Gaming',null,null);

insert into dio
(konfiguracija,komponenta) values
/* 1 */
(1,1),
/* 2 */ 
(1,2),
/* 3 */
(1,3),
/* 4 */
(1,4),
/* 5 */
(1,5),
/* 6 */
(3,1),
/* 7 */
(3,2),
/* 8 */
(3,3),
/* 9 */
(3,4),
/* 10 */
(3,5);
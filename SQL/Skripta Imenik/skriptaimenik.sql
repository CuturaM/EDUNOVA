/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaimenik.sql" 
*/

drop database if exists imenik;
create database imenik;
use imenik;


create table kontakt(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50),
broj varchar(32) not null,
vrsta int not null
);


create table vrsta(
sifra int not null primary key auto_increment,
naziv varchar(50)
);



alter table kontakt add foreign key (vrsta) references vrsta(sifra);



insert into vrsta
(naziv) values
/* 1 */
('Mobitel'),
/* 2 */
('Kućni'),
/* 3 */
('Posao');

insert into kontakt
(ime,prezime,broj,vrsta) values
/* 1 */
('Ante','Starčević','00385955221111',1),
/* 2 */
('Stjepan','Radić','0038531113443',2),
/* 3 */
('Marko','Marulić','0038531993113',3),
/* 4 */
('Josip','Jelačić','00385955001199',1);
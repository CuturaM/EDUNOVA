/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptatrgovina"
*/

drop database if exists trgovina;
create database trgovina default character set utf8;
use trgovina;

create table racun(
sifra int not null primary key auto_increment,
datum datetime default now(),
kupac varchar(100)
);


create table stavka(
racun int not null,
proizvod int not null,
kolicina decimal(18,3) not null
);


create table proizvod(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
cijena decimal(18,2) not null
);



alter table stavka add foreign key (racun) references racun(sifra);
alter table stavka add foreign key (proizvod) references proizvod(sifra);



insert into proizvod 
(naziv,cijena) values
/* 1 */
('Marlboro',30.00),
/* 2 */
('Pan',9.80),
/* 3 */
('Karlovačko',9.99);

insert into racun
(datum,kupac) values
/* 1 */
('2018-12-02',null),
/* 2 */
('2019-01-15','Romos-int d.o.o');

insert into stavka
(racun,proizvod,kolicina) values
/* 1 */
(1,1,15.000),
/* 2 */
(1,3,10.000),
/* 3 */
(2,2,900.000);
/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaj201862.sql"
*/

drop database if exists edunovaj20;
create database edunovaj20 default character set utf8;
use edunovaj20;

create table smjer(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
trajanje int not null,
cijena decimal(18,2),
upisnina decimal(18,2),
certificiran boolean not null
);


create table osoba(
sifra int primary key auto_increment,
oib char(11),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null
);


create table polaznik(
sifra int not null primary key auto_increment,
osoba int not null,
brojugovora varchar(20)
);


create table predavac(
sifra int not null primary key auto_increment,
osoba int not null,
iban varchar(32)
);


create table clan(
grupa int int not null,
polaznik int int not null
);


create table grupa(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
smjer int not null,
predavac int,
datumpocetka datetime default now()
);


alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);


insert into smjer
(naziv,trajanje,cijena,upisnina,certificiran) values
/* 1 */
('Java programiranje',130,5489.85,null,true),
/* 2 */ 
('PHP programer',130,null,null,false),
/* 3 */
('Operater',100,null,null,true),
/* 4 */
('čšćđž ČŠĆĐŠŽ',100,null,null,false),
/* 5 */
('Serviser',60,null,null,true),
/* 6 */
('EU fondovi',230,null,null,true);

insert into grupa (naziv,smjer,datumpocetka) values 
/* 1 */
('J20',1,'2019-05-06 17:00:00'),
/* 2 */
('PP19',2,'2019-05-06 19:00:00');

insert into osoba (ime,prezime,email) values
/* 1 */
('Marta','Cerovečki','martacerovecki664@gmail.com'),
/* 2 */
('Marin','Čutura','w.cutura1990@gmail.com'),
/* 3 */
('Karlo','Grbavac','karlo.grbavac@gmail.com'),
/* 4 */ 
('Luka','Hlavati','lukahlavati@gmail.com'),
/* 5 */
('Tomislav','Juroš','tomislavj84@gmail.com'),
/* 6 */
('Jelena','Klenkar','jelena.klenkar@gmail.com'),
/* 7 */
('Mirza','Delagić','mirza.delagic@gmail.com'),
/* 8 */
('Marko','Herek','marko.herek55@gmail.com'),
/* 9 */
('Niko','Jukić','niko.jukic200@gmail.com'),
/* 10 */
('Tomislav','Glavašić','tomislavglavasic@gmail.com'),
/* 11 */
('Ivan','Višić','ivan_visic@hotmail.com'),
/* 12 */
('Tomislav','Jakopec','tjakopec@gmail.com'),
/* 13 */
('Shaquille', 'O''Neal','saki@gmail.com');

insert into polaznik (osoba) values
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11);

insert into predavac (osoba) values 
(12),(13);

insert into clan(grupa,polaznik) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(2,7),(2,11);



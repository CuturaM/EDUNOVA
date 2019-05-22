/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptataxisluzba1862.sql"
*/



drop database if exists taxisluzba1862;
create database taxisluzba1862 default character set utf8;
use taxisluzba1862;

create table vozilo(
sifra int not null primary key auto_increment,
model varchar(50) not null,
registracija varchar(15) not null,
tip varchar(50) not null,
brojvrata int not null,
brojsjedala int not null,
boja varchar(50) not null,
vozac int
);


create table vozac(
sifra int not null primary key auto_increment,
osoba int not null,
oib char(11) not null,
iban varchar(32) not null,
email varchar(100)
);


create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
brojtelefona varchar(50) 
);


create table voznja(
sifra int not null primary key auto_increment,
putnik int,
vrijeme int,
cijena decimal(18,2) not null
);


create table vrijeme(
sifra int not null primary key auto_increment,
putnik int not null,
datum datetime not null default now()
);


alter table vozilo add foreign key (vozac) references vozac(sifra);

alter table vozac add foreign key (osoba) references osoba(sifra);

alter table voznja add foreign key (putnik) references osoba(sifra);
alter table voznja add foreign key (vrijeme) references vrijeme(sifra);

alter table vrijeme add foreign key (putnik) references osoba(sifra);



insert into osoba
(ime,prezime,brojtelefona) values
/* 1 */
('Marko','Marulić','00385950001111'),
/* 2 */
('Josip','Jelačić','00385951112222'),
/* 3 */
('Ivan','Gundulić','003855224444'),
/* 4 */
('Ante','Starčević','003955267777');

insert into vozac
(osoba,oib,iban,email) values
/* 1 */
(1,'11111111111','HR8624840081102131080','marko.marulic@gmail.com'),
/* 2 */
(2,'22222222222','HR8624840081102131081','josip.jelacic@gmail.com');

insert into vozilo
(model,registracija,tip,brojvrata,brojsjedala,boja,vozac) values
/* 1 */
('Volkswagen','HR 8004 EU','T-Rock',4,5,'Plava',1),
/* 2 */
('Volkswagen','HR 7005 EU','T-Cross',5,5,'Crvena',2);

insert into vrijeme
(putnik,datum) values
/* 1 */
(3,'2019-05-06 12:30:15'),
/* 2 */
(4,'2017-12-28');

insert into voznja
(putnik,vrijeme,cijena) values
/* 1 */
(3,1,500.00),
/* 2 */
(4,2,123.40);
-- ova datoteka se nalazi na:
-- mysql -ucuturam -p --default_character_set=utf8 < C:\Users\CuturaM\Documents\GitHub\EDUNOVA\ELEONORA\skriptaeleonora.sql

drop database if exists eleonora;
create database eleonora default character set utf8;
use eleonora;



create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
zaporka int (4) not null,
oib char(11) not null,
email varchar(50) not null,
administrator boolean not null
);



create table artikl(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
kolicina decimal(18,3) not null,
prodajnacijena decimal(18,2) not null,
nabavnacijena decimal(18,2) not null,
jmj varchar(3) not null,
kategorija varchar(50) not null,
pdv decimal(18,2) not null,
skladiste varchar(50) not null
);



create table narudzba(
artikl int not null,
racun int not null,
vrijeme datetime default now(),
korisnik int not null,
kolicina decimal(18,3)
);



create table racun(
sifra int not null primary key auto_increment,
vrijeme datetime default now(),
artikl int not null,
zki varchar(32),
jir varchar(32),
korisnik int not null,
nacinplacanja int not null,
iznos decimal(18,2) not null
);



create table placanje(
sifra int not null primary key auto_increment,
gotovina boolean,
kartica boolean,
virman boolean
);



create table partener(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
oib char(11) not null,
iban varchar(32),
grad varchar(50) not null,
ulica varchar(50) not null,
drzava varchar(50) not null
);



alter table narudzba add foreign key (artikl) references artikl(sifra);
alter table narudzba add foreign key (racun) references racun(sifra);
alter table narudzba add foreign key (korisnik) references korisnik(sifra);

alter table racun add foreign key (artikl) references artikl(sifra);
alter table racun add foreign key (korisnik) references korisnik(sifra);
alter table racun add foreign key (nacinplacanja) references placanje(sifra);

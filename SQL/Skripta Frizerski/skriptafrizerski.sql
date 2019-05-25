/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptafrizerski.sql"
*/

drop database if exists frizerski1862;
create database frizerski1862 default character utf8;
use frizerski1862;

create table zaposlenik(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(50) not null,
email varchar(100)
);


create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
brojtelefona varchar(50),
zaposlenik int not null,
posjet int not null
);


create table posjet(
sifra int not null primary key auto_increment,
usluga varchar(100) not null,
cijena decimal(18,2) not null,
datumpocetka datetime not null
);



alter table korisnik add foreign key (zaposlenik) references zaposlenik(sifra);
alter table korisnik add foreign key (posjet) references posjet(sifra);

insert into zaposlenik
(oib,ime,prezime,iban,email) values
/* 1 */
('25564306144','Ante','Starčević','HR8023400097215226419','ante.starcevic@gmail.com'),
/* 2 */
('85266523210','Stjepan','Radić','HR5524020069459566787',null);

insert into posjet
(usluga,cijena,datumpocetka) values
/* 1 */
('Šišanje',35.00,'2019-05-25 12:00:00'),
/* 2 */
('Farbanje',150.00,'2019-03-24 10:30:00'),
/* 3 */
('Šišanje',35.00,'2019-02-14 17:00:00');

insert into korisnik 
(ime,prezime,brojtelefona,zaposlenik,posjet) values
/* 1 */
('Marko','Marulić',null,1,1),
/* 2 */
('Josip','Jelačić','00385956003232',2,2),
/* 3 */
('Marko','Marulić',null,1,3);

/* 
Ova datoteka se nalazi na
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptamuzej.sql"
*/


drop database if exists muzej1862;
create database muzej1862 default character set utf8;
use muzej1862;

create table izlozba(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
cijenaulaznice decimal(18,2) not null,
kustos int not null,
dijelo int not null,
sponzor int not null
);


create table dijelo(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
minutaza varchar(50)
);


create table sponzor(
sifra int not null primary key auto_increment,
firma boolean,
nazivfirme varchar(150),
osoba int,
iznosdonacije decimal(18,2) not null
);


create table kustos(
sifra int not null primary key auto_increment,
osoba int not null,
iban varchar(32) not null
);


create table osoba(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100)
);

alter table kustos add foreign key (osoba) references osoba(sifra);
alter table sponzor add foreign key (osoba) references osoba(sifra);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (dijelo) references dijelo(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);

insert into osoba
(oib,ime,prezime,email) values
/* 1 */ 
('25564306144','Ante','Starčević','ante.starcevic@gmail.com'),
/* 2 */
('85266523210','Stjepan','Radić','stjepan.radic@gmail.com'),
/* 3 */
('55515186608','Marko','Marulić','marko.marulic@gmail.com'),
/* 4 */
('97379984083','Josip','Jelačić','josip.jelacic@gmail.com'),
/* 5 */
('38156367435','Ivan','Gundulić','ivan.gundulic@gmail.com');

insert into kustos
(osoba,iban) values
/* 1 */
(1,'HR8023400097215226419'),
/* 2 */
(2,'HR5524020069459566787'),
/* 3 */
(3,'HR1924020064181138126');

insert into sponzor
(firma,nazivfirme,osoba,iznosdonacije) values
/* 1 */
(true,'Ericsson',null,3000.00),
/* 2 */
(false,null,5,2000.00);

insert into dijelo
(naziv,minutaza) values
/* 1 */
('ACT 1','100 min.'),
/* 2 */
('ACT 2','60 min.'),
/* 3 */
('ACT 3','120 min.');


insert into izlozba
(naziv,cijenaulaznice,kustos,dijelo,sponzor) values
/* 1 */
('Izložba Prva',50.00,1,1,1),
/* 2 */
('Izložba Druga',60.00,2,2,2);


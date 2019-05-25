/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptaorganizacija.sql"
*/


drop database if exists organizacija;
create database organizacija default character set utf8;
use organizacija;

create table zaposlenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
odjel int not null,
nadredjeni int 
);


create table odjel(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
voditelj int 
);



alter table zaposlenik add foreign key (odjel) references odjel(sifra);
alter table zaposlenik add foreign key (nadredjeni) references zaposlenik(sifra);

alter table odjel add foreign key (voditelj) references zaposlenik(sifra);



insert into odjel 
(naziv) values 
/* 1 */
('Odjel 1'),
/* 2 */
('Odjel 2');

insert into zaposlenik
(ime,prezime,odjel,nadredjeni) values
/* 1 */
('Ante','Starčević',1,null),
/* 2 */
('Stjepan','Radić',2,null),
/* 3 */ 
('Josip','Jelačić',1,1),
/* 4 */
('Marko','Marulić',2,2);

update odjel set voditelj=1 where sifra=1;
update odjel set voditelj=2 where sifra=2;
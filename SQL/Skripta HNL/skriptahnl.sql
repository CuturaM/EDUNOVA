/*
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptahnl.sql"
*/

drop database if exists hnl;
create database hnl default character set utf8;
use hnl;

create table utakmica(
sifra int not null primary key auto_increment,
datum datetime not null,
stadion varchar(50) not null,
domacin int not null,
gost int not null,
rezultat decimal(2,2) not null
);


create table momcad(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
mjesto varchar(50) not null
);



alter table utakmica add foreign key (domacin) references momcad(sifra),
alter table utakmica add foreign key (gost) references momcad(sifra);



insert into momcad 
(naziv,mjesto) values
/* 1 */
('Dinamo','Zagreb'),
/* 2 */
('Hajduk','Split');

insert into utakmica
(datum,stadion,domacin,gost,rezultat) values
/* 1 */
('2019-04-11','Maksimir',1,2,10.00),
/* 2 */
('2019-05-20','Poljud',2,1,00.09);
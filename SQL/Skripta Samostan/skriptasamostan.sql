/* 
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptasamostan1862.sql"
*/


drop database if exists samostan1862;
create database samostan1862 default character set utf8;
use samostan1862;

create table svecenik(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(32) not null,
email varchar(100) not null,
nadredjenisvecenik int
);


create table posao(
sifra int not null primary key auto_increment,
svecenik int not null,
trajanje varchar(50),
naziv varchar(100) not null,
vrijeme datetime not null
);



alter table svecenik add foreign key (nadredjenisvecenik) references svecenik(sifra);

alter table posao add foreign key (svecenik) references svecenik(sifra);


insert into svecenik 
(oib,ime,prezime,iban,email,nadredjenisvecenik) values
/* 1 */
('32855883549','Ante','Starčević','HR7524020065253647397','ante.starcevic@gmail.com',null),
/* 2 */ 
('58151183615','Marko','Marulić','HR0924020062948126686','marko.marulic@gmail.com',1),
/* 3 */ 
('07304390318','Josip','Jelačić','HR7625000096956472614','josip.jelacic@gmail.com',1),
/* 4 */
('78565773717','Juraj','Dobrila','HR2023400091222257584','juraj.dobrila@gmail.com',1),
/* 5 */
('94023103808','Ivan','Gundulić','HR8325000095764397293','ivan.gundulic@gmail.com',1);

insert into posao
(svecenik,trajanje,naziv,vrijeme) values
/* 1 */
(2,'30 min.','Misa','2019-05-23 12:00:00'),
/* 2 */
(3,'40 min.','Misa','2019-05-23 14:30:00'),
/* 3 */
(4,'15 min.','Ispovjed','2019-05-23 17:15:00'),
/* 4 */
(5,'15 min.','Ispovjed','2019-05-23 17:15:00');






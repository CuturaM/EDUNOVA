/* 
Ova datoteka se nalazi na:
mysql -ucuturam -p --default_character_set=utf8 < "d:\skriptauzzz.sql"
*/

drop database if exists uzzz1862;
create database uzzz1862 default character set utf8;
use uzzz1862;

create table zaposlenik(
sifra int not null primary key auto_increment,
oib char(11) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(32) not null,
email varchar(50)
);


create table sticenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50),
zaposlenik int not null,
prostor int not null
);


create table prostor(
sifra int not null primary key auto_increment,
povrsina varchar(50) not null,
grijanje boolean not null
);



alter table sticenik add foreign key (zaposlenik) references zaposlenik(sifra);
alter table sticenik add foreign key (prostor) references prostor(sifra);


insert into prostor 
(povrsina,grijanje) values
/* 1 */
('62 m2',true),
/* 2 */
('40 m2',false);

insert into zaposlenik
(oib,ime,prezime,iban,email) values
/* 1 */
('25564306144','Ante','Starčević','HR8023400097215226419','ante.starcevic@gmail.com'),
/* 2 */
('85266523210','Stjepan','Radić','HR5524020069459566787','stjepan.radic@gmail.com');

insert into sticenik
(ime,prezime,zaposlenik,prostor) values
/* 1 */
('Oz',null,1,1),
/* 2 */
('Hasan','Ferhatović',2,2);


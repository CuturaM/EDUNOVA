-- ova datoteka se nalazi na:
-- mysql -ucuturam -p --default_character_set=utf8 < C:\Users\CuturaM\Documents\GitHub\EDUNOVA\GALICIJA\skriptagalicija.sql

drop database if exists galicija;
create database galicija default character set utf8;
use galicija;


create table uplatitelj(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(32) not null,
email varchar(50) not null
);



create table uplata(
sifra int not null primary key auto_increment,
uplatitelj int not null,
kategorija int not null,
vrijemeuplate datetime default now(),
iznosuplate decimal(18,2) not null
);



create table isplatitelj(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
iban varchar(32) not null,
email varchar(100)
);



create table isplata(
sifra int not null primary key auto_increment,
isplatitelj int not null,
kategorija int not null,
vrijemeisplate datetime default now(),
iznosisplate decimal(18,2) not null
);



create table kategorija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);



create table stednja(
sifra int not null primary key auto_increment,
vrijeme datetime default now(),
iznos decimal(18,2) not null
);



create table operater(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
lozinka char(32) not null,
ime varchar(50) not null,
prezime varchar(50) not null,
uloga varchar(50) not null
);


alter table uplata add foreign key (uplatitelj) references uplatitelj(sifra);
alter table isplata add foreign key (isplatitelj) references isplatitelj(sifra);
alter table uplata add foreign key (kategorija) references kategorija(sifra);
alter table isplata add foreign key (kategorija) references kategorija(sifra);

create unique index ix1 on operater(naziv); 


insert into operater
(naziv,lozinka,ime,prezime,uloga) values
/* 1 */
('cuturam',md5('c'),'Marin','Čutura','Administrator'),
/* 2 */
('vlatkam',md5('v'),'Vlatka','Martinić','Operater');


insert into uplatitelj
(ime,prezime,iban,email) values
/* 1 */
('Ante','Starčević','HR7525000097285599549','ante.starcevic@gmail.com'),
/* 2 */
('Stjepan','Radić','HR0823600002984545987','stjepan.radic@gmail.com'),
/* 3 */
('Josip','Jelačić','HR3024020065697275282','josip.jelacic@gmail.com');


insert into kategorija
(naziv) values
/* 1 */
('Hrana/Piće'),
/* 2 */
('Kupovina'),
/* 3 */
('Prijevoz'),
/* 4 */
('Zabava'),
/* 5 */
('Obitelj'),
/* 6 */
('Zdravlje/Sport'),
/* 7 */
('Kućni ljubimci'),
/* 8 */
('Putovanja'),
/* 9 */
('Cigarete'),
/* 10 */
('Režije/Stanarina'),
/* 11 */
('Plaća'),
/* 12 */
('Mirovina'),
/* 13 */
('Poslići'),
/* 14 */
('Financijski prihod');


insert into uplata
(uplatitelj,iznosuplate,kategorija)
/* 1 */
(1,4200.00,12),
/* 2 */
(2,400.00,13),
/* 3 */
(3,1000.00,14);















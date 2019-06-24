-- ova datoteka se nalazi na:
-- mysql -ucuturam -p --default_character_set=utf8 < C:\Users\CuturaM\Documents\GitHub\EDUNOVA\ELEONORA\skriptaeleonora.sql

drop database if exists eleonora;
create database eleonora default character set utf8;
use eleonora;



create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
lozinka char(4) not null,
oib char(11) not null,
email varchar(50) not null,
administrator boolean
);



create table artikl(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zaliha decimal(18,3) not null,
prodajnacijena decimal(18,2) not null,
nabavnacijena decimal(18,2) not null,
normativ decimal (18,3) not null,
kategorija varchar(50) not null,
skladiste varchar(50) not null,
slika varchar(999) not null,
stopapp boolean
);



create table narudzba(
sifra int not null primary key auto_increment,
artikl int not null,
racun int not null,
kolicina decimal(18,3), 
popust decimal(18,2),
cijena decimal(18,2)
);



create table racun(
sifra int not null primary key auto_increment,
vrijeme datetime default now(),
zki varchar(32),
jir varchar(32),
korisnik int not null,
iznos decimal(18,2) not null,
kupac int,
nacinplacanja varchar(50),
blagajna varchar(50) not null
);



create table kupac(
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
oib char(11) not null,
iban varchar(32),
grad varchar(50) not null,
ulica varchar(50) not null,
drzava varchar(50) not null
);



create table porez(
sifra int not null primary key auto_increment,
naziv varchar(10) not null,
stopa decimal(18,2) not null,
racun int,
iznosporeza decimal(18,2)
);




alter table narudzba add foreign key (artikl) references artikl(sifra);
alter table narudzba add foreign key (racun) references racun(sifra);

alter table racun add foreign key (korisnik) references korisnik(sifra);
alter table racun add foreign key (kupac) references kupac(sifra);

alter table porez add foreign key (racun) references racun(sifra);



/* Ubacivanje podataka u bazu */

insert into korisnik
(ime,prezime,lozinka,oib,email,administrator) values
/* 1 */
('Marin','Čutura','0646','06466535209','w.cutura1990@gmail.com',1),
/* 2 */
('Vlatka','Martinić','0103','01031831151','vlatka.martinic@gmail.com',0);



insert into artikl
(naziv,zaliha,prodajnacijena,nabavnacijena,normativ,kategorija,skladiste,slika,stopapp) values
/* 1 */
('ESPRESSO',5.000,8.00,0.89,0.007,'TOPLI NAPITCI','ŠANK1','https://drive.google.com/open?id=1a-H6zom5oyedSN7Teu3At8t2W3UFj_74',0),
/* 2 */
('KAVA S MLIJEKOM',0.000,9.00,0.89,0.007,'TOPLI NAPITCI','ŠANK1','https://drive.google.com/open?id=1b8RGnadP3jk6wSWAWgm94wcGwQD_0vEa',0),
/* 3 */
('KAVA MLIJEKO PRODUŽENA',0.000,10.00,0.89,0.007,'TOPLI NAPITCI','ŠANK1','https://drive.google.com/open?id=11y7DiSGXSvv5cRHGpRr9xF4FSswMJnk2',0),
/* 4 */
('CAPPUCCINO',0.000,10.00,0.89,0.007,'TOPLI NAPITCI','ŠANK1','https://drive.google.com/open?id=1wkobzO4NXots4FvDXeJmmC4eQQiO67p4',0),
/* 5 */
('BIJELA KAVA',0.000,12.00,0.89,0.007,'TOPLI NAPITCI','ŠANK1','https://drive.google.com/open?id=1kKi1HzkitR6IcsubHr7igkvjUP8sZ5VB',0),
/* 6*/
('NESCAFE',250.000,12.00,1.37,1.000,'TOPLI NAPITCI','ŠANK1','https://drive.google.com/open?id=1ldfwjRPD-gqTse3NZ6lvZ9byyaOwsniX',0),
/* 7 */
('ČAJ',400.000,10.00,0.40,1.000,'TOPLI NAPITCI','ŠANK1','https://drive.google.com/open?id=1ldfwjRPD-gqTse3NZ6lvZ9byyaOwsniX',0),
/* 8 */
('COCA COLA 0.25L',240.000,15.00,3.09,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=15vY9Xn-_PXikAzKeVFcrIWwuYrYN5BeG',1),
/* 9 */
('FANTA 0.25L',240.000,15.00,3.09,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1zQP5JnwCbUo9sTgM7OLLlUJ4Dyp2AsN-',1),
/* 10 */
('SPRITE 0.25L',240.000,15.00,3.09,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1C6M7rIXE-_WHDmkW1F7TxVMFHuSKjv-l',1),
/* 11 */
('SCHWEPPES 0.25L',240.000,15.00,3.20,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1grQiwBmWRgEAQW09L7a2GS9jgyu2j7BM',1),
/* 12 */
('PRIRODNI SOK CAPPY 0.20L',200.000,15.00,3.50,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1a8BVXogDk2dQQnXlfK8JlTenLlNxs62J',1),
/* 13 */
('LEDENI ČAJ 0.20L',240.000,15.00,2.30,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1mWwYs-avXsl35AD6sKFSMG0malsL3x3Z',1),
/* 14 */
('ORANGINA 0.25L',240.000,16.00,4.39,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1jQilEO4pQdYuRzXc0TcpXgXZ9DkFt1xW',1),
/* 15 */
('CEDEVITA',400.000,11.00,2.11,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1lwu5fu4Y4Qju9S4jT0-MhOpFes6lOxe6',1),
/* 16 */
('COCKTA 0.25L',200.000,15.00,2.79,1.000,'SOKOVI','ŠANK1','https://drive.google.com/open?id=1WXphZ8FDe1omP7ab_c2DS-UnPbqUjOmW',1),
/* 17 */
('MINERALNA VODA 1L',48.000,20.00,1.91,1.000,'MINERALNE VODE','ŠANK1','https://drive.google.com/open?id=1sXuyJ2MOeimvpLAIQF2URgkVKqLFZVDU',1),
/* 18 */
('MINERALNA VODA 0.25L',96.000,10.00,1.29,1.000,'MINERALNE VODE','ŠANK1','https://drive.google.com/open?id=1PW-OK5Q9nnIkphic4tPruniEXVoY_cQm',1),
/* 19 */
('VODA NEGAZIRANA 0.33L',96.000,10.00,1.13,1.000,'MINERALNE VODE','ŠANK1','https://drive.google.com/open?id=1A8o3zzTzBe5DsVqKl7wZenAv8tXto7QR',1),
/* 20 */
('SENSATION JAMNICA 0.20L',96.000,11.00,1.74,1.000,'MINERALNE VODE','ŠANK1','https://drive.google.com/open?id=1lkG6PHtEQvMj0NaSoIsExhK75yWu1n6U',1),
/* 21 */
('KARLOVAČKO 0.5L',100.000,15.00,3.54,1.000,'PIVO','ŠANK1','https://drive.google.com/open?id=1S5mYhmQd7J9O7ZcQj2_wQ4zrc3zGvcLf',1),
/* 22 */
('HEINEKEN 0.33L',96.000,20.00,4.85,1.000,'PIVO','ŠANK1','https://drive.google.com/open?id=1WEFWo87NkyGuC-20rdt-4LQ8z963hDZK',1),
/* 23 */
('GRAŠEVINA BELJE 1L',24.000,140.00,24.10,1.000,'VINO','ŠANK1','https://drive.google.com/open?id=1KHW5NNyR5YNFj3tRoeTJuCNnjPmEEv5Q',1),
/* 24 */
('MERLOT BELJE 1L',24.000,140.00,27.34,1.000,'VINO','ŠANK1','https://drive.google.com/open?id=1bBO3AiUNXZ3ryGp-WBg3jJxgq2HW03Vd',1),
/* 25 */
('PELINKOVAC 0.03L',2.000,10.00,1.43,0.030,'DOMAĆA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1hVFIbP2ncQuBdydZrfkP-7H050lKI0zW',1),
/* 26 */
('TRAVARICA 0.03L',2.000,10.00,1.45,0.030,'DOMAĆA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1cx9ZBLCtGiPbBOgEA4IWZ0UQrvJOdwGn',1),
/* 27 */
('LOZOVAČA 0.03L',2.000,12.00,2.18,0.030,'DOMAĆA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1FyoigncQ_u0SoNeJA2tsV54YJ6k3aQe0',1),
/* 28 */
('ŠLJIVOVICA 0.03L',2.000,10.00,1.88,0.030,'DOMAĆA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1nER-rvw66IqmJRiCG4ve3ey1-NGXOjVM',1),
/* 29 */
('VIŠNJEVAC 0.03L',2.000,12.00,2.08,0.030,'DOMAĆA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1NuMh4NS6M7p0chxyVLV0EmGv03abXOe0',1),
/* 30 */
('JAGERMEISTER 0.03L',1.400,15.00,3.08,0.030,'STRANA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1p0ODDKK34BLSUTqY_pc-DiyOvw57XUap',1),
/* 31 */
('JACK DANIELS 0.03L',1.400,20.00,5.33,0.030,'STRANA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1eUsFxWcmp4PFZxDoCa5X7RxE_UffLso-',1),
/* 32 */
('SMIRNOFF 0.03L',1.400,12.00,2.97,0.030,'STRANA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1c4x3kJ_D7StpO1A63b8hF45EuWdGUNvV',1),
/* 33 */
('BOMBAY SAPPHIRE 0.03L',1.400,18.00,4.41,0.030,'STRANA ŽESTOKA PIĆA','ŠANK1','https://drive.google.com/open?id=1c4x3kJ_D7StpO1A63b8hF45EuWdGUNvV',1);




insert into racun
(korisnik,iznos,nacinplacanja,blagajna) values
/* 1 */
(1,0.00,'Gotovina','Kasa1'),
/* 2 */
(1,0.00,'Gotovina','Kasa1'),
/* 3 */
(1,0.00,'Gotovina','Kasa1'),
/* 4 */
(2,0.00,'Gotovina','Kasa1'),
/* 5 */
(2,0.00,'Kartica','Kasa1');



insert into narudzba
(artikl,racun,kolicina,popust,cijena) values
/* 1 */
(1,1,1.000,0.00,8.00),
/* 2 */
(4,1,3.000,0.00,10.00),
/* 3 */
(1,2,5.000,0.00,8.00),
/* 4*/
(14,2,4.000,0.00,10.00),
/* 5 */
(33,3,2.000,0.00,18.00),
/* 6 */
(11,3,1.000,0.00,15.00),
/* 7 */
(8,4,3.000,0.00,15.00),
/* 8 */
(15,4,5.000,0.00,11.00),
/* 9 */ 
(27,5,3.000,0.00,12.00),
/* 10 */
(21,5,5.000,0.00,15.00);



insert into porez
(naziv,stopa,racun,iznosporeza) values
/* 1 */
('pdv',25.00,1,null);



insert into kupac
(naziv,oib,grad,ulica,drzava) values
/* 1 */
('Romos Commerce d.o.o.','23988915754','Osijek','Ferde Livadića 9','HR');


/* UPDATE */

update racun set iznos=38.00 where sifra=1;
update racun set iznos=80.00 where sifra=2;
update racun set iznos=51.00 where sifra=3;
update racun set iznos=100.00 where sifra=4;
update racun set iznos=111.00 where sifra=5;
update artikl set zaliha=zaliha-0.007 where sifra=1;
update artikl set zaliha=zaliha-0.021 where sifra=1;
update artikl set zaliha=zaliha-0.035 where sifra=1;
update artikl set zaliha=zaliha-4.000 where sifra=14;
update artikl set zaliha=zaliha-0.060 where sifra=33;
update artikl set zaliha=zaliha-1.000 where sifra=11;
update artikl set zaliha=zaliha-3.000 where sifra=8;
update artikl set zaliha=zaliha-5.000 where sifra=15;
update artikl set zaliha=zaliha-0.090 where sifra=27;
update artikl set zaliha=zaliha-5.000 where sifra=21;
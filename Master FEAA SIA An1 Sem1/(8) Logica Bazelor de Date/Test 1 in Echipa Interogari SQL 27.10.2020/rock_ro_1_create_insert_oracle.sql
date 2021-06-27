drop table vanzari_discuri FORCE;
drop table realizare_disc FORCE;
drop table alcatuire_disc FORCE;
drop table discografie FORCE;
drop table muzicieni FORCE;
drop table formatii FORCE;


create table formatii(
  IdFormatie INTEGER NOT NUll,
  DenumireFormatie varchar(100) NOT NULL,
  AnInfiintare NUMBER(4) NOT NUll,
  Tara varchar(50),
  CONSTRAINT formatii_pk PRIMARY KEY (IdFormatie)
);

create table discografie(
  IdDisc INTEGER not null
  	Constraint pk_discografie PRIMARY KEY,
  TitluDisc varchar(100) not null,
  IdFormatie INTEGER not null 
  Constraint fk_discografie_formatii REFERENCES formatii(IdFormatie),
	AnLansare number(4) not null
);

create table alcatuire_disc(
  IdDisc INTEGER not null Constraint fk_alcatuire_disc_discografie REFERENCES discografie(IdDisc),
  Piesa varchar(50) not null,
  NrOrdine number(5) not null,
  DurataSec INTEGER not null,
  CONSTRAINT alcatuire_disc_Piesa PRIMARY KEY (IdDisc,Piesa,NrOrdine)
);

create table muzicieni(
  IdMuzician INTEGER not null constraint muzicieni_pk PRIMARY KEY,
  NumeMuzician varchar(50) not null,
  NumeReal varchar(50),
  DataNasterii date not null,
  Tara varchar(20)
);

create table realizare_disc(
  IdDisc INTEGER not null Constraint fk_realizare_disc_D REFERENCES discografie(IdDisc),
  IdMuzician INTEGER not null constraint fk_realizare_dm REFERENCES muzicieni(IdMuzician),
  Calitate varchar(50),
  constraint realizare_disc_m PRIMARY KEY(IdDisc, IdMuzician)
);

create table vanzari_discuri(
  IdDisc INTEGER not null Constraint fk_vanzari_discuri_D REFERENCES discografie(IdDisc),
  Tara varchar(20) not null,
  An NUMBER(4) not null,
  Luna NUMBER(2) not null,
  NrBucati number(10) not null,
  Incasari_USD number (14,2) not null,
  constraint vanzari_discuri PRIMARY KEY(IdDisc, Tara, An, Luna)
);



INSERT INTO Formatii VALUES(101,'Beatles',1960,'Anglia');
INSERT INTO Formatii VALUES(102,'Yes',1967,'Anglia');
INSERT INTO Formatii VALUES(103,'Smile',1968,'Anglia');
INSERT INTO Formatii VALUES(104,'Queen',1970,'Anglia');
INSERT INTO Formatii VALUES(105,'Metallica',1981,'America');
INSERT INTO Formatii VALUES(106,'Bon Jovi',1983,'America');
INSERT INTO Formatii VALUES(107,'Scorpions',1965,'Germania');
INSERT INTO Formatii VALUES(108,'Kiss',1973,'America');
INSERT INTO Formatii VALUES(109,'Iris',1976,'Romania');
INSERT INTO Formatii VALUES(110,'Phoenix',1962,'Romania');
INSERT INTO Formatii VALUES(111,'Coldplay',1996,'Anglia');


INSERT INTO Muzicieni VALUES(1,'Bob Dylan','R Zimmerman', DATE'1941-06-12','America');
INSERT INTO Muzicieni VALUES(2, 'John Lennon','John Lennon',DATE'1940-10-09','Anglia');
INSERT INTO Muzicieni VALUES(3, 'Paul Mccartney','Paul Mccartney' ,DATE'1942-06-18','Anglia');
INSERT INTO Muzicieni VALUES(4, 'Jon Anderson','Jon Anderson' ,DATE'1944-10-25','Anglia');
INSERT INTO Muzicieni VALUES(5, 'Freddie Mercury', 'Farrokh Bulsara',DATE'1946-09-05','Anglia'); 
INSERT INTO Muzicieni VALUES(6,'Brian May', 'Brian Harold May', DATE'1947-07-19','Anglia');
INSERT INTO Muzicieni VALUES(7, 'Roger Taylor','Roger Meddows Taylor ', DATE'1949-07-26','Anglia');
INSERT INTO Muzicieni VALUES(8, 'James Hetfield', 'James Alan Hetfield', DATE'1965-08-03','America');
INSERT INTO Muzicieni VALUES(9, 'Jon Bon Jovi','John Francis Bongiovi Jr', DATE'1962-03-02','America');
INSERT INTO Muzicieni VALUES(10, 'Klaus Meine' ,'Klaus Meine', DATE'1948-05-25','Germania');
INSERT INTO Muzicieni VALUES(11, 'Paul Stanley' ,'Stanley Bert Eisen', DATE'1952-01-20','America');
INSERT INTO Muzicieni VALUES(12, 'Cristian Minculescu' ,'Cristian Alexandru Minculescu', DATE'1959-01-09', 'Romania');
INSERT INTO Muzicieni VALUES(13, 'Nicu Covaci','Nicolae Covaci', DATE'1947-04-19', 'Romania');
INSERT INTO Muzicieni VALUES(14, 'Chris Martin','Christopher Anthony John Martin ', DATE'1977-03-02', 'Anglia');
INSERT INTO Muzicieni VALUES(15, 'Freddie Mercury', 'Farrokh Bulsara',DATE'1946-09-05','Anglia'); 
INSERT INTO Muzicieni VALUES(16,'Brian May', 'Brian Harold May', DATE'1947-07-19','Anglia') ;
INSERT INTO Muzicieni VALUES(17,'Roger Taylor', 'Roger Meddows Taylor ', DATE'1949-07-26','Anglia');
INSERT INTO Muzicieni VALUES(18,'Rick Wakeman','Richard Christopher Wakeman',DATE'1949-05-18','Anglia') ;

INSERT INTO Discografie VALUES(1,'Let It Be',101,1970);
INSERT INTO Discografie VALUES(2,'Abbey Road',101,1969);
INSERT INTO Discografie VALUES(3,'Let It Be 2',101,1971);
INSERT INTO Discografie VALUES(4,'With The Beatles',101,1963);
INSERT INTO Discografie VALUES(5,'Yes',102,1970);
INSERT INTO Discografie VALUES(6,'Going For The One',102,1977);
INSERT INTO Discografie VALUES(7,'Drama',102,1980);
INSERT INTO Discografie VALUES(8,'Queen',104,1973);
INSERT INTO Discografie VALUES(9,'Hot Space',104,1982);
INSERT INTO Discografie VALUES(10,'The Works',104,1984);
INSERT INTO Discografie VALUES(11,'Master Of Puppets',105,1986);
INSERT INTO Discografie VALUES(12,'Load',105,'1996');
INSERT INTO Discografie VALUES(13,'New Jersey',106,1988);
INSERT INTO Discografie VALUES(14,'Crush',106,2000);
INSERT INTO Discografie VALUES(15,'Lovedrive',107,1979);
INSERT INTO Discografie VALUES(16,'Crazy World',107,1990);
INSERT INTO Discografie VALUES(17,'Destroyer',108,1976);
INSERT INTO Discografie VALUES(18,'Dynasty',108,1979);
INSERT INTO Discografie VALUES(19,'Carnival Of Souls',108,1997);
INSERT INTO Discografie VALUES(20,'Casino',109,1999);
INSERT INTO Discografie VALUES(21,'Iris Maxima',109,2005);
INSERT INTO Discografie VALUES(22,'Vremuri',110,1968);
INSERT INTO Discografie VALUES(23,'Tuareg',110, 1988);
INSERT INTO Discografie VALUES(24,'Baba Novak',110,2005);
INSERT INTO Discografie VALUES(25,'Ghost Stories',111,2014);
INSERT INTO Discografie VALUES(26,'Viva La Vida Or Death And All His Friends',111,2008);
INSERT INTO discografie VALUES (27,'The Beach Boys',103,1966)


INSERT INTO Realizare_disc VALUES(1,2,'Chitara,Voce');
INSERT INTO Realizare_disc VALUES(1,3,'Bass,Voce');
INSERT INTO Realizare_disc VALUES(3,4,'Voce,Chitara');
INSERT INTO Realizare_disc VALUES(4,2,'Chitara, Voce');
INSERT INTO Realizare_disc VALUES(5,4,'Voce,Chitara');
INSERT INTO Realizare_disc VALUES(6,4,'Voce,Chitara');
INSERT INTO Realizare_disc VALUES(7,4,'Voce,Chitara');
INSERT INTO Realizare_disc VALUES(8,6,'Voce');
INSERT INTO Realizare_disc VALUES(9,6,'Voce');
INSERT INTO Realizare_disc VALUES(10,6,'Voce');
INSERT INTO Realizare_disc VALUES(11,8,'Voce, Chitara');
INSERT INTO Realizare_disc VALUES(12,8,'Voce, Chitara');
INSERT INTO Realizare_disc VALUES(13,9,'Voce, Chitara, Compozitie');
INSERT INTO Realizare_disc VALUES(14,9,'Voce, Chitara, Compozitie');
INSERT INTO Realizare_disc VALUES(15,10,'Voce');
INSERT INTO Realizare_disc VALUES(16,10,'Voce');
INSERT INTO Realizare_disc VALUES(17,11,'Voce');
INSERT INTO Realizare_disc VALUES(18,11,'Voce');
INSERT INTO Realizare_disc VALUES(19,11,'Voce');
INSERT INTO Realizare_disc VALUES(20,12,'Voce');
INSERT INTO Realizare_disc VALUES(21,12,'Voce');
INSERT INTO Realizare_disc VALUES(22,13,'Voce, Chitara');
INSERT INTO Realizare_disc VALUES(23,13,'Voce, Chitara');
INSERT INTO Realizare_disc VALUES(24,13,'Voce, Chitara');
INSERT INTO Realizare_disc VALUES(25,13,'Voce, Chitara');
INSERT INTO Realizare_disc VALUES(26,14,'Voce');
INSERT INTO Realizare_disc VALUES (27,5,'Voce');
INSERT INTO Realizare_disc VALUES (27,6,'Chitara');
INSERT INTO Realizare_disc VALUES (27,7,'Tobe');
INSERT INTO Realizare_disc VALUES (8,5,'Chitara');
INSERT INTO Realizare_disc VALUES (8,7,'Toba');
INSERT INTO Realizare_disc VALUES (5,18,'Chitara');

INSERT INTO Alcatuire_disc VALUES(1,'Two Of Us',1,215);
INSERT INTO Alcatuire_disc VALUES(1,'Dig A Pony',2,232);
INSERT INTO Alcatuire_disc VALUES(3,'Across The Universe',3,227);
INSERT INTO Alcatuire_disc VALUES(1,'I Me Mine',4,145);
INSERT INTO Alcatuire_disc VALUES(1,'Let It Be',6,241);
INSERT INTO Alcatuire_disc VALUES(1,'"One After 909',9,172);
INSERT INTO Alcatuire_disc VALUES(3,'The Long And Winding Road',10,217);
INSERT INTO Alcatuire_disc VALUES(1,'For You Blue',11,152);
INSERT INTO Alcatuire_disc VALUES(3,'Get Back',12,187);
INSERT INTO Alcatuire_disc VALUES(2,'Come Together',1,259);
INSERT INTO Alcatuire_disc VALUES(2,'Something',2,183);
INSERT INTO Alcatuire_disc VALUES(2,'Oh! Darling',4,207);
INSERT INTO Alcatuire_disc VALUES(2,'Here Comes The Sun',7,186);
INSERT INTO Alcatuire_disc VALUES(2,'Because',8,166);
INSERT INTO Alcatuire_disc VALUES(2,'You Never Give Me Your Money',9,249);
INSERT INTO Alcatuire_disc VALUES(2,'Knocking On Heavens Door',10,146);
INSERT INTO Alcatuire_disc VALUES(2,'Polythene Pam',11,73);
INSERT INTO Alcatuire_disc VALUES(2,'Golden Slumbers',14,92);
INSERT INTO Alcatuire_disc VALUES(2,'The End',16,140);
INSERT INTO Alcatuire_disc VALUES(2,'Her Majesty',17,23);
INSERT INTO Alcatuire_disc VALUES(3,'Maggie Mae',7,41);
INSERT INTO Alcatuire_disc VALUES(3,'Dig It',5,49);
INSERT INTO Alcatuire_disc VALUES(4,'All My Loving',3,128);
INSERT INTO Alcatuire_disc VALUES(4,'Little Child',5,96);
INSERT INTO Alcatuire_disc VALUES(4,'Till There Was You',6,134);
INSERT INTO Alcatuire_disc VALUES(4,'Roll Over Beethoven',1,165);
INSERT INTO Alcatuire_disc VALUES(4,'Hold Me Tight',2,152);
INSERT INTO Alcatuire_disc VALUES(4,'Not A Second Time',6,127);
INSERT INTO Alcatuire_disc VALUES(6,'Going For The One',1,335);
INSERT INTO Alcatuire_disc VALUES(6,'Turn Of The Century',2,476);
INSERT INTO Alcatuire_disc VALUES(6,'Parallels',3,353);
INSERT INTO Alcatuire_disc VALUES(6,'Wonderous Stories',4,229);
INSERT INTO Alcatuire_disc VALUES(6,'Awaken',5,931);
INSERT INTO Alcatuire_disc VALUES(5,'Beyond And Before',1,298);
INSERT INTO Alcatuire_disc VALUES(5,'I See You',2,414);
INSERT INTO Alcatuire_disc VALUES(5,'Looking Around',4,245);
INSERT INTO Alcatuire_disc VALUES(5,'Every Little Thing',6,346);
INSERT INTO Alcatuire_disc VALUES(5,'Sweetness',7,275);
INSERT INTO Alcatuire_disc VALUES(7,'Machine Messiah',1,626);
INSERT INTO Alcatuire_disc VALUES(7,'White Car',2,83);
INSERT INTO Alcatuire_disc VALUES(7,'Does It Really Happen?',3,396);
INSERT INTO Alcatuire_disc VALUES(7,'Into The Lens',4,512);
INSERT INTO Alcatuire_disc VALUES(7,'Run Through The Light',5,285);
INSERT INTO Alcatuire_disc VALUES(9,'Dancer',2,229);
INSERT INTO Alcatuire_disc VALUES(9,'Back Chat',3,276);
INSERT INTO Alcatuire_disc VALUES(9,'Body Language',4,273);
INSERT INTO Alcatuire_disc VALUES(9,'Action This Day',5,215);
INSERT INTO Alcatuire_disc VALUES(9,'Put Out The Fire',6,200);
INSERT INTO Alcatuire_disc VALUES(9,'Calling All Girls',8,232);
INSERT INTO Alcatuire_disc VALUES(9,'Under Pressure',11,238);
INSERT INTO Alcatuire_disc VALUES(8,'Keep Yourself Alive',1,246);
INSERT INTO Alcatuire_disc VALUES(8,'Doing All Right',2,249);
INSERT INTO Alcatuire_disc VALUES(8,'Great King Rat',3,341);
INSERT INTO Alcatuire_disc VALUES(8,'Son And Daughter',4,201);
INSERT INTO Alcatuire_disc VALUES(8,'Jesus',5,224);
INSERT INTO Alcatuire_disc VALUES(8,'Seven Seas Of Rhye...',6,75);
INSERT INTO Alcatuire_disc VALUES(10,'Radio Ga Ga',1,344);
INSERT INTO Alcatuire_disc VALUES(10,'Tear It Up',2,208);
INSERT INTO Alcatuire_disc VALUES(10,'Man On The Prowl',4,208);
INSERT INTO Alcatuire_disc VALUES(10,'I Want To Break Free',6,200);
INSERT INTO Alcatuire_disc VALUES(10,'Hammer To Fall',8,268);
INSERT INTO Alcatuire_disc VALUES(11,'Battery',1,309);
INSERT INTO Alcatuire_disc VALUES(11,'Master Of Puppets',2,515);
INSERT INTO Alcatuire_disc VALUES(11,'Disposable Heroes',5,496);
INSERT INTO Alcatuire_disc VALUES(11,'Leper Messiah',6,341);
INSERT INTO Alcatuire_disc VALUES(11,'The Thing That Should Not Be',3,394);
INSERT INTO Alcatuire_disc VALUES(12,'2 X 4',2,328);
INSERT INTO Alcatuire_disc VALUES(12,'Until It Sleeps',4,270);
INSERT INTO Alcatuire_disc VALUES(12,'King Nothing',5,328);
INSERT INTO Alcatuire_disc VALUES(12,'Mama Said',11,320);
INSERT INTO Alcatuire_disc VALUES(12,'Ronnie',13,317);
INSERT INTO Alcatuire_disc VALUES(12,'The Outlaw Torn',14,588);
INSERT INTO Alcatuire_disc VALUES(13,'Lay Your Hands On Me',1,358);
INSERT INTO Alcatuire_disc VALUES(13,'Bad Medicine',2,316);
INSERT INTO Alcatuire_disc VALUES(13,'Born To Be My Baby',3,280);
INSERT INTO Alcatuire_disc VALUES(13,'Living In Sin',4,279);
INSERT INTO Alcatuire_disc VALUES(13,'Blood On Blood',5,376);
INSERT INTO Alcatuire_disc VALUES(14,'Its My Life',1,224);
INSERT INTO Alcatuire_disc VALUES(14,'Thank You For Loving Me',3,309);
INSERT INTO Alcatuire_disc VALUES(14,'Two Story Town',4,310);
INSERT INTO Alcatuire_disc VALUES(14,'Next 100 Years',5,379);
INSERT INTO Alcatuire_disc VALUES(14,'Mystery Train',7,314);
INSERT INTO Alcatuire_disc VALUES(15,'Loving You Sunday Morning',1,336);
INSERT INTO Alcatuire_disc VALUES(15,'Another Piece Of Meat',2,210);
INSERT INTO Alcatuire_disc VALUES(15,'"Always Somewhere',3,296);
INSERT INTO Alcatuire_disc VALUES(15,'Coast To Coas',4,282);
INSERT INTO Alcatuire_disc VALUES(15,'Is There Anybody There?',6,238);
INSERT INTO Alcatuire_disc VALUES(16,'Tease Me Please Me',1,284);
INSERT INTO Alcatuire_disc VALUES(16,'To Be With You In Heaven',3,288);
INSERT INTO Alcatuire_disc VALUES(16,'Wind Of Change',4,310);
INSERT INTO Alcatuire_disc VALUES(16,'Lust Or Love',6,262);
INSERT INTO Alcatuire_disc VALUES(16,'Kicks After Six',7,229);
INSERT INTO Alcatuire_disc VALUES(17,'Detroit Rock City',1,317);
INSERT INTO Alcatuire_disc VALUES(17,'King Of The Night Time World',2,199);
INSERT INTO Alcatuire_disc VALUES(17,'God Of Thunder',3,253);
INSERT INTO Alcatuire_disc VALUES(17,'Flaming Youth',5,179);
INSERT INTO Alcatuire_disc VALUES(17,'Shout It Out Loud',7,169);
INSERT INTO Alcatuire_disc VALUES(18,'I Was Made For Lovin You',1,270);
INSERT INTO Alcatuire_disc VALUES(18,'2,000 Man',2,294);
INSERT INTO Alcatuire_disc VALUES(18,'Sure Know Something',3,240);
INSERT INTO Alcatuire_disc VALUES(18,'Knocking On Heavens Door',4,259);
INSERT INTO Alcatuire_disc VALUES(18,'Charisma',5,265);
INSERT INTO Alcatuire_disc VALUES(18,'Save Your Love',9,281);
INSERT INTO Alcatuire_disc VALUES(19,'Hate',1,276);
INSERT INTO Alcatuire_disc VALUES(19,'Rain',2,286);
INSERT INTO Alcatuire_disc VALUES(19,'Master and Slave',3,297);
INSERT INTO Alcatuire_disc VALUES(19,'I Will Be There',5,229);
INSERT INTO Alcatuire_disc VALUES(19,'Jungle',6,289);
INSERT INTO Alcatuire_disc VALUES(20,'Casino ',1,369);
INSERT INTO Alcatuire_disc VALUES(20,'Casino Calcutta',2,302);
INSERT INTO Alcatuire_disc VALUES(20,'Virus',3,269);
INSERT INTO Alcatuire_disc VALUES(20,'Jailbreak',4,305);
INSERT INTO Alcatuire_disc VALUES(20,'Whole Lotta Love',5,290);
INSERT INTO Alcatuire_disc VALUES(20,'Feel Like Makin Love',6,365);
INSERT INTO Alcatuire_disc VALUES(21,'Iris Maxima',1,330);
INSERT INTO Alcatuire_disc VALUES(21,'Zi De Zi',2,295);
INSERT INTO Alcatuire_disc VALUES(21,'Vino Pentru Totdeauna',3,366);
INSERT INTO Alcatuire_disc VALUES(21,'Ziua Care Va Veni',4,291);
INSERT INTO Alcatuire_disc VALUES(21,'Saray',6,255);
INSERT INTO Alcatuire_disc VALUES(22,'Vremuri',1,293);
INSERT INTO Alcatuire_disc VALUES(22,'Canarul ',2,376);
INSERT INTO Alcatuire_disc VALUES(22,'Lady Madonna',3,281);
INSERT INTO Alcatuire_disc VALUES(22,'Friday On My Mind',4,309);
INSERT INTO Alcatuire_disc VALUES(23,'Tuareg',1,183);
INSERT INTO Alcatuire_disc VALUES(23,'Tuareg Extended Version',2,230);
INSERT INTO Alcatuire_disc VALUES(23,'The Lark',3,234);
INSERT INTO Alcatuire_disc VALUES(24,'Zori De Zi',1,361);
INSERT INTO Alcatuire_disc VALUES(24,'Fluier In Cer',2,321);
INSERT INTO Alcatuire_disc VALUES(24,'Orașul Scufundat',3,369);
INSERT INTO Alcatuire_disc VALUES(24,'Pasărea De Foc',4,356);
INSERT INTO Alcatuire_disc VALUES(24,'Singur',5,344);
INSERT INTO Alcatuire_disc VALUES(25,'Always In My Hand',1,237);
INSERT INTO Alcatuire_disc VALUES(25,'True Love',4,260);
INSERT INTO Alcatuire_disc VALUES(25,'Oceans',7,269);
INSERT INTO Alcatuire_disc VALUES(26,'Lost',3,235);
INSERT INTO Alcatuire_disc VALUES(26,'Yes',6,427);
INSERT INTO Alcatuire_disc VALUES(26,'Viva La Vida',7,241);
INSERT INTO alcatuire_disc Values (27,'The Beach Boys',1,382) ;



INSERT INTO Vanzari_discuri VALUES(1,'Anglia',1970,6,1540000,174000);
INSERT INTO Vanzari_discuri VALUES(1,'Anglia',1970,7,1000000,165000);
INSERT INTO Vanzari_discuri VALUES(2,'America',1971,5,2000000,254000);
INSERT INTO Vanzari_discuri VALUES(2,'America',1971,8,1500000,200000);
INSERT INTO Vanzari_discuri VALUES(3,'Anglia',1979,9,2500000,300000);
INSERT INTO Vanzari_discuri VALUES(4,'America',1963,5,3500000,300000);
INSERT INTO Vanzari_discuri VALUES(4,'America',1982,6,3000000,270000);
INSERT INTO Vanzari_discuri VALUES(4,'Anglia',1983,5,1000000,150000);
INSERT INTO Vanzari_discuri VALUES(5,'America',1970,8,2000000,300000);
INSERT INTO Vanzari_discuri VALUES(5,'Anglia',1972,2,500000,45000);
INSERT INTO Vanzari_discuri VALUES(5,'Anglia',1973,4,700000,65000);
INSERT INTO Vanzari_discuri VALUES(6,'Anglia',1977,9,3000000,350000);
INSERT INTO Vanzari_discuri VALUES(6,'America',1977,10,2000000,150000);
INSERT INTO Vanzari_discuri VALUES(6,'Romania',1974,5,500000,35000);
INSERT INTO Vanzari_discuri VALUES(7,'Anglia',1980,10,1500000,450000);
INSERT INTO Vanzari_discuri VALUES(7,'America',1981,1,2000000,500000);
INSERT INTO Vanzari_discuri VALUES(7,'Romania',1981,1,500000,80000);
INSERT INTO Vanzari_discuri VALUES(8,'America',1973,12,800000,400000);
INSERT INTO Vanzari_discuri VALUES(8,'Romania',1974,6,300000,150000);
INSERT INTO Vanzari_discuri VALUES(8,'Germania',1975,6,500000,250000);
INSERT INTO Vanzari_discuri VALUES(9,'Anglia',1982,9,850000,400000);
INSERT INTO Vanzari_discuri VALUES(9,'America',1982,12,600000,350000);
INSERT INTO Vanzari_discuri VALUES(10,'Romania',1985,1,350000,220000);
INSERT INTO Vanzari_discuri VALUES(10,'Germania',1986,4,550000,330000);
INSERT INTO Vanzari_discuri VALUES(11,'Anglia',1986,8,600000,300000);
INSERT INTO Vanzari_discuri VALUES(12,'Anglia',1996,10,700000,350000);
INSERT INTO Vanzari_discuri VALUES(12,'America',1997,1,600000,260000);
INSERT INTO Vanzari_discuri VALUES(12,'Romania',1999,5,330000,160000);
INSERT INTO Vanzari_discuri VALUES(13,'America',1988,12,800000,660000);
INSERT INTO Vanzari_discuri VALUES(13,'Anglia',1988,12,600000,550000);
INSERT INTO Vanzari_discuri VALUES(14,'America',2000,7,500000,330000);
INSERT INTO Vanzari_discuri VALUES(14,'Romania',2001,2,140000,95000);
INSERT INTO Vanzari_discuri VALUES(15,'Germania',1979,8,1000000,650000);
INSERT INTO Vanzari_discuri VALUES(15,'Romania',1980,10,250000,100000);
INSERT INTO Vanzari_discuri VALUES(16,'Germania',1990,11,600000,450000);
INSERT INTO Vanzari_discuri VALUES(16,'America',1990,12,500000,150000);
INSERT INTO Vanzari_discuri VALUES(17,'America',1976,7,650000,350000);
INSERT INTO Vanzari_discuri VALUES(17,'Anglia',1977,6,500000,170000);
INSERT INTO Vanzari_discuri VALUES(18,'America',1980,3,650000,100000);
INSERT INTO Vanzari_discuri VALUES(19,'America',1977,4,1500000,230000);
INSERT INTO Vanzari_discuri VALUES(19,'Romania',1977,6,500000,96000);
INSERT INTO Vanzari_discuri VALUES(20,'Romania',1999,7,350000,150000);
INSERT INTO Vanzari_discuri VALUES(20,'Romania',2000,2,400000,170000);
INSERT INTO Vanzari_discuri VALUES(21,'Romania',2005,8,800000,450000);
INSERT INTO Vanzari_discuri VALUES(21,'Romania',2006,4,350000,120000);
INSERT INTO Vanzari_discuri VALUES(22,'Romania',1968,8,150000,80000);
INSERT INTO Vanzari_discuri VALUES(23,'America',1973,6,50000,35000);
INSERT INTO Vanzari_discuri VALUES(23,'Germania',1973,8,500000,420000);
INSERT INTO Vanzari_discuri VALUES(23,'Romania',1974,3,450000,190000);
INSERT INTO Vanzari_discuri VALUES(24,'Romania',2005,10,360000,235000);
INSERT INTO Vanzari_discuri VALUES(24,'Germania',2005,11,320000,195000);
INSERT INTO Vanzari_discuri VALUES(25,'Anglia',2014,9,650000,450000);
INSERT INTO Vanzari_discuri VALUES(25,'Anglia',2015,2,75000,45000);
INSERT INTO Vanzari_discuri VALUES(26,'Anglia',2008,7,600000,567000);
INSERT INTO Vanzari_discuri VALUES(26,'Romania',2009,3,300000,190000);
INSERT INTO vanzari_discuri VALUES(1,'Romania', 2017,3,50000,47000);
INSERT INTO vanzari_discuri VALUES(1,'Anglia',2017,1,500000,40000);
INSERT INTO vanzari_discuri VALUES(1,'America',2017,2,400000,35000);
INSERT INTO vanzari_discuri VALUES(1,'Anglia',2017,4,650000,400000);
INSERT INTO vanzari_discuri VALUES(1,'Angola',2017,5,500000,65000);
INSERT INTO vanzari_discuri VALUES(1,'Romania',2017,6,70000,40000);


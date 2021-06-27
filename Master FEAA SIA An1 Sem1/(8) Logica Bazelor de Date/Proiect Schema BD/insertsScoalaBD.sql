
-- populare tabela elevi 
INSERT INTO Elevi VALUES ('1', 'Ionescu_Bogdan',' 0758892581','ionescu.bogdan@gmail.com', TO_DATE('17/02/1995', 'dd/mm/yyyy'));
INSERT INTO Elevi VALUES ('2', 'Popescu_Tudor',' 0741290535','popescu.tudor@gmail.com', TO_DATE('3/04/1996', 'dd/mm/yyyy'));
INSERT INTO Elevi VALUES ('3', 'Prelipcean', 'Radu', '0740250673','prelipcean.radu@yahoo.com', TO_DATE('26/05/1995', 'dd/mm/yyyy'));
INSERT INTO Elevi VALUES ('4', 'Antonie', 'Ioana', '0745869453', 'antonie.ioana@yahoo.com', TO_DATE('3/01/1995', 'dd/mm/yyyy'));
INSERT INTO Elevi VALUES ('5', 'Arhire', 'Raluca','0740250123','arhire.raluca@yahoo.com', TO_DATE('26/12/1995', 'dd/mm/yyyy'));
INSERT INTO Elevi VALUES ('6', 'Panaite', 'Alexandru','0745869123','panainte.alexandru@yahoo.com', TO_DATE('13/04/1995', 'dd/mm/yyyy'));

-- populare tabela profesori
INSERT INTO Profesori VALUES ('Bodnar_Ioana','0742589632', 'bondar.ioana@yahoo.com');
INSERT INTO Profesori VALUES ('Archip_Andrada','0742545732', 'archip.andrada@yahoo.com');
INSERT INTO Profesori VALUES ('Ciobotariu_Ciprian','0742258632', 'ciobotariu.ciprian@yahoo.com');
INSERT INTO Profesori VALUES ('Bodnar_Andrei','0742358632', 'bondar.andrei@yahoo.com');
INSERT INTO Profesori VALUES ('Pavel_Ciprian','0741598632', 'pavel.ciprian@yahoo.com');
INSERT INTO Profesori VALUES ('Butnaru_Andrei','0742488632', 'butnaru.andrei@yahoo.com');

-- populare tabela discipline
INSERT INTO Discipline VALUES ('1', 'Matematica');
INSERT INTO Discipline VALUES ('2', 'Informatica');
INSERT INTO Discipline VALUES ('3', 'Fizica');
INSERT INTO Discipline VALUES ('4', 'Chimie');
INSERT INTO Discipline VALUES ('5', 'Biologie');
INSERT INTO Discipline VALUES ('6', 'Logica');
INSERT INTO Discipline VALUES ('7', 'Limba Romana');
INSERT INTO Discipline VALUES ('8', 'Educatie fizica');
INSERT INTO Discipline VALUES ('9', 'Istorie');

-- populare tabela elevi_discipline
INSERT INTO Elevi_Discipline VALUES (TO_DATE('26/10/2020', 'dd/mm/yyyy'));
INSERT INTO Elevi_Discipline VALUES (TO_DATE('27/10/2020', 'dd/mm/yyyy'));
INSERT INTO Elevi_Discipline VALUES (TO_DATE('28/10/2020', 'dd/mm/yyyy'));
INSERT INTO Elevi_Discipline VALUES (TO_DATE('29/10/2020', 'dd/mm/yyyy'));
INSERT INTO Elevi_Discipline VALUES (TO_DATE('30/10/2020', 'dd/mm/yyyy'));
INSERT INTO Elevi_Discipline VALUES (TO_DATE('31/10/2020', 'dd/mm/yyyy'));

-- populare tabela cataloage
INSERT INTO Cataloage VALUES ('1', '8', NULL, 'promovat');
INSERT INTO Cataloage VALUES ('2', '4', NULL, 'corigent');
INSERT INTO Cataloage VALUES ('3', '4', NULL, 'repetent');
INSERT INTO Cataloage  VALUES ('4', '4', NULL, 'corigent');
INSERT INTO Cataloage VALUES ('5', '9', NULL, 'promovat');
INSERT INTO Cataloage VALUES ('6', '10', NULL, 'promovat');

-- populare tabela clase
INSERT INTO Clase VALUES ('9','A', '24');
INSERT INTO Clase VALUES ('9','B', '24');
INSERT INTO Clase VALUES ('10','A', '26');
INSERT INTO Clase VALUES ('10','B', '28');
INSERT INTO Clase VALUES ('11','A', '27');
INSERT INTO Clase VALUES ('11','B', '23');
INSERT INTO Clase VALUES ('12','A', '24');
INSERT INTO Clase VALUES ('12','B', '26');

-- populare tabela profil
INSERT INTO Profil VALUES ('101', 'Matemetica-Informatica');
INSERT INTO Profil VALUES ('102', 'Stiinte ale Naturii');
INSERT INTO Profil VALUES ('103', 'Stiinte Sociale');
INSERT INTO Profil VALUES ('104', 'Filologie');
INSERT INTO Profil VALUES ('105', 'Matemetica-Informatica');
INSERT INTO Profil VALUES ('106', 'Matemetica-Informatica');

-- populare tabela info_clase
INSERT INTO Info_clase VALUES ('2015-2016');
INSERT INTO Info_clase VALUES ('2016-2017');
INSERT INTO Info_clase VALUES ('2017-2018');
INSERT INTO Info_clase VALUES ('2018-2019');
INSERT INTO Info_clase VALUES ('2019-2020');

-- populare tabela burse
INSERT INTO Burse VALUES ('201','Bursa de merit', '500');
INSERT INTO Burse VALUES ('202','Bursa sociala', '400');
INSERT INTO Burse VALUES ('203','Bursa medicala', '800');

-- populare tabela activitati de dezvoltare
INSERT INTO Activitati_de_Dezvoltare VALUES ('110', 'Sah', '20');
INSERT INTO Activitati_de_Dezvoltare VALUES ('111', 'Pian', '12');
INSERT INTO Activitati_de_Dezvoltare VALUES ('112', 'Baschet', '11');
INSERT INTO Activitati_de_Dezvoltare VALUES ('113', 'Fotbal', '14');
INSERT INTO Activitati_de_Dezvoltare VALUES ('114', 'Volei', '15');

-- populare tabela Concurs_Olimpiada
INSERT INTO Concurs_Olimpiada VALUES ('303','Premiu I','99 puncte');
INSERT INTO Concurs_Olimpiada VALUES ('304','Premiu II','84 puncte');
INSERT INTO Concurs_Olimpiada VALUES ('305','Premiu III','76 puncte');
INSERT INTO Concurs_Olimpiada VALUES ('306','Mentiune','62 puncte');
INSERT INTO Concurs_Olimpiada VALUES ('307','Premiu I','96 puncte');
INSERT INTO Concurs_Olimpiada VALUES ('308','Premiu II','88 puncte');
INSERT INTO Concurs_Olimpiada VALUES ('309','Premiu III','67 puncte');
INSERT INTO Concurs_Olimpiada VALUES ('310','Mentiune','65 puncte');

-- populare tabela Concurs
INSERT INTO Concursuri VALUES ('Concursul Electra', 'Matematica', '(TO_DATE('12/03/2019', 'dd/mm/yyyy'))');
INSERT INTO Concursuri VALUES ('Concursul Olimpia', 'Limba romana', '(TO_DATE('16/04/2019', 'dd/mm/yyyy'))');
INSERT INTO Concursuri VALUES ('Concursul de Biologie', 'Biologie', '(TO_DATE('18/06/2019', 'dd/mm/yyyy'))');
INSERT INTO Concursuri VALUES ('Concursul Istoria Chinei', 'Istorie', '(TO_DATE('05/07/2019', 'dd/mm/yyyy'))');
INSERT INTO Concursuri VALUES ('Concursul de Informatica', 'Informatica', '(TO_DATE('20/08/2019', 'dd/mm/yyyy'))');

-- populare tabela Olimpiada
INSERT INTO Olimpiada VALUES ('12','Locala','Vaslui');
INSERT INTO Olimpiada VALUES ('13','Locala','Bacau');
INSERT INTO Olimpiada VALUES ('14','Judeteana','Iasi');
INSERT INTO Olimpiada VALUES ('15','Nationala','Bucuresti');

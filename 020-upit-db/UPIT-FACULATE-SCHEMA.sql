--structura baza de date
DROP TABLE studenti;

DROP TABLE cursuri;

DROP TABLE note;

DROP TABLE profesori;

DROP TABLE didactic;


--studenti identificati in mod unic prin nr_matricol
CREATE TABLE studenti(
  nr_matricol VARCHAR2(4) NOT NULL,
  nume VARCHAR2(50),
  prenume VARCHAR2(50),
  an NUMBER(1),
  grupa VARCHAR2(2),
  bursa NUMBER(6,2),
  data_nastere DATE
);

--cursuri identificate in mod unic prin id_curs
CREATE TABLE cursuri(
  id_curs VARCHAR2(2) NOT NULL,
  titlu_curs VARCHAR2(50),
  an NUMBER(1),
  semestru NUMBER(1),
  credite NUMBER(2)
);

--note obtinute la cursuri + data la care au fost obtinute
CREATE TABLE note(
  nr_matricol VARCHAR2(4),
  id_curs VARCHAR2(2),
  valoare NUMBER(2),
  data_notare DATE
);

--profesori identificati in mod unic prin id_prof
CREATE TABLE profesori(
  id_prof VARCHAR2(4) NOT NULL,
  nume VARCHAR2(50),
  prenume VARCHAR2(50),
  grad_didactic VARCHAR2(5)
);

--legatura intre profesori si cursurile predate de acestia
CREATE TABLE didactic(
  id_prof VARCHAR2(4),
  id_curs VARCHAR2(4)
);


--master anul I - (a.k.a. anul 4 de studiu)
INSERT INTO studenti VALUES ('501', 'St?moiu', 'Mihaela',4, 'M1',NULL, TO_DATE('17/02/1995', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('502', 'Tu??', 'Cristian',4, 'M1',NULL, TO_DATE('26/05/1995', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('503', 'Arge?eanu', 'Marcel Ioan',4, 'M1',NULL, TO_DATE('3/01/1995', 'dd/mm/yyyy'));

--anul 3 de studiu 
INSERT INTO studenti VALUES ('601', 'Bogoi', 'Valentin',3, 'A3',NULL, TO_DATE('26/12/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('602', 'Chiv?ran', 'Robert',3, 'A3',450, TO_DATE('13/04/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('603', 'Chivu', 'Serenela',3, 'A3',NULL, TO_DATE('23/05/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('604', 'Diac', 'Melinda',3, 'A3',NULL, TO_DATE('18/09/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('605', 'Dobrin', 'Alexandra',3, 'A3',350, TO_DATE('25/03/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('606', 'Ene', 'Simion',3, 'B3',NULL, TO_DATE('21/08/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('607', 'Iordache', 'Stefania',3, 'B3',NULL, TO_DATE('19/07/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('608', 'Rusu', 'Albert',3, 'B3',NULL, TO_DATE('16/10/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('609', '?erb', 'Madalin',3, 'B3',250, TO_DATE('09/12/1996', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('610', 'Voicu', 'Gabriel',3, 'B3',NULL, TO_DATE('30/05/1996', 'dd/mm/yyyy'));
 
-- anul 2 de studiu
INSERT INTO studenti VALUES ('701', 'Andrei', 'Violeta',2, 'A2',NULL, TO_DATE('26/08/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('702', 'Anghel', 'Adriana',2, 'A2',450, TO_DATE('03/04/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('703', 'Bratu', 'Razvan',2, 'A2',350, TO_DATE('03/04/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('704', 'Bujor', 'Catalin',2, 'A2',NULL, TO_DATE('10/06/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('705', 'Ciomblea', 'Alexandra',2, 'A2',NULL, TO_DATE('08/04/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('706', 'Codeci', 'Sebastian',2, 'A2',NULL, TO_DATE('11/02/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('707', 'Col?eanu', 'Cristiana',2, 'B2',NULL, TO_DATE('26/03/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('708', 'Iordan', 'Filip',2, 'B2',NULL, TO_DATE('05/09/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('709', 'Neac?u', 'Roxana',2, 'B2',NULL, TO_DATE('18/06/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('710', 'Ro?ca', 'Constantin',2, 'B2',150, TO_DATE('17/11/1997', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('711', 'Sp?taru', 'Laura',2, 'B2',NULL, TO_DATE('15/03/1997', 'dd/mm/yyyy'));
 
-- anul 1 de studiu
INSERT INTO studenti VALUES ('801', 'Alecu', 'Cornel',1, 'A1',250, TO_DATE('26/08/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('802', 'Alexandru', 'Simion',1, 'A1',NULL, TO_DATE('02/07/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('803', 'Badiu', 'Diana',1, 'A1',350, TO_DATE('29/04/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('804', 'B?di??', 'George',1, 'A1',NULL, TO_DATE('10/05/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('805', 'Budin', 'Dana',1, 'A1',NULL, TO_DATE('14/08/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('806', 'Ciolc?', 'Liviu',1, 'A1',NULL, TO_DATE('19/03/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('807', 'Cîrstoiu', 'Camelia',1, 'A1',NULL, TO_DATE('26/12/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('808', 'Corbeanu', 'Filip',1, 'B1',NULL, TO_DATE('08/09/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('809', 'Dr?gu?in', 'Laurentiu',1, 'B1',NULL, TO_DATE('06/08/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('810', 'Dumitru', 'Marius',1, 'B1',NULL, TO_DATE('30/10/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('811', 'Gorzko', 'Florin',1, 'B1',450, TO_DATE('17/05/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('812', 'Mazureac', 'Cosmin',1, 'B1',NULL, TO_DATE('03/01/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('813', 'Mihai', 'Bogdan',1, 'B1',NULL, TO_DATE('09/06/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('814', 'Mitu', 'Cristian',1, 'B1',NULL, TO_DATE('12/10/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('815', 'N?stase', 'Adriana',1, 'B1',NULL, TO_DATE('28/07/1998', 'dd/mm/yyyy'));

INSERT INTO studenti VALUES ('816', 'Nedelcu', 'Isabela',1, 'C1',NULL, TO_DATE('15/08/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('817', 'Ni?u', 'Irina',1, 'C1',150, TO_DATE('29/01/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('818', 'Oprea', 'Daniel',1, 'C1',NULL, TO_DATE('12/03/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('819', 'Popescu', 'Iuliana',1, 'C1',NULL, TO_DATE('14/07/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('820', 'Staicu', 'Victor',1, 'C1',NULL, TO_DATE('18/05/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('821', 'Stan', 'Florin',1, 'C1',NULL, TO_DATE('17/06/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('822', 'Stoica', 'Sevilia',1, 'C1',NULL, TO_DATE('07/07/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('823', 'T?nase', 'Ioana',1, 'C1',NULL, TO_DATE('11/06/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('824', 'Tudor', 'Lavinia',1, 'D1',NULL, TO_DATE('13/05/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('825', 'Tudor', 'Elvis',1, 'D1',350, TO_DATE('06/07/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('827', 'Zamfir', 'Mihai',1, 'D1',NULL, TO_DATE('16/08/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('828', 'Zinca', 'Anca',1, 'D1',NULL, TO_DATE('12/07/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('829', 'Leca', 'Cornelia',1, 'D1',NULL, TO_DATE('08/03/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('830', 'Dr?ghici', 'Pavel',1, 'E1',NULL, TO_DATE('10/08/1998', 'dd/mm/yyyy'));
INSERT INTO studenti VALUES ('831', 'Papuc', 'Adrian',1, 'E1',NULL, TO_DATE('17/05/1998', 'dd/mm/yyyy'));

-- inserare tabela cursuri
INSERT INTO cursuri VALUES ('10', 'Analiza matematica', 1, 1, 5);
INSERT INTO cursuri VALUES ('11', 'Fundamentele programarii', 1, 1, 6);
INSERT INTO cursuri VALUES ('12', 'Arhitectura sistemelor de calcul', 1, 1, 5);
INSERT INTO cursuri VALUES ('13', 'Algoritmi si structuri de date', 1, 1, 6);
INSERT INTO cursuri VALUES ('14', 'Fundamentele algebrice ale informaticii', 1, 1, 5);
INSERT INTO cursuri VALUES ('15', 'Educatie Fizica', 1, 1, 3);
INSERT INTO cursuri VALUES ('20', 'Ecuatii diferentiale si sisteme dinamice', 2, 1, 6);
INSERT INTO cursuri VALUES ('21', 'Proiectarea si implementarea algoritmilor', 2, 1, 6);
INSERT INTO cursuri VALUES ('22', 'Semantica programelor', 2, 1, 5);
INSERT INTO cursuri VALUES ('23', 'Sisteme de gestiune a bazelor de date', 2, 1, 7);
INSERT INTO cursuri VALUES ('24', 'Programare non-imperativa', 2, 1, 3);
INSERT INTO cursuri VALUES ('30', 'Sisteme de operare', 3, 1, 5);
INSERT INTO cursuri VALUES ('31', 'Analiza si prelucrarea imaginilor', 3, 1, 5);
INSERT INTO cursuri VALUES ('32', 'Analiza reala: Teoria masurii', 3, 1, 5);
INSERT INTO cursuri VALUES ('33', 'Calcul numeric', 3, 1, 5);
INSERT INTO cursuri VALUES ('34', 'Instruire asistata de calculator', 3, 1, 5);
INSERT INTO cursuri VALUES ('35', 'Inginerie software', 3, 1, 5);
INSERT INTO cursuri VALUES ('40', 'Service Oriented Distributed Architectures', 4, 1, 5);
INSERT INTO cursuri VALUES ('41', 'Math. Modeling and Graph Teory', 4, 1, 5);
INSERT INTO cursuri VALUES ('42', 'Advanced Database Systems', 4, 1, 5);
INSERT INTO cursuri VALUES ('43', 'Software Engineering', 4, 1, 5);
INSERT INTO cursuri VALUES ('44', 'Optimization Techniques', 4, 1, 5);


-- populare tabela profesori
INSERT INTO profesori VALUES ('p1', 'Nuica', 'Antonio-Mihail', 'Lect');
INSERT INTO profesori VALUES ('p2', 'Paun', 'Viorel', 'Lect');
INSERT INTO profesori VALUES ('p3', 'Turcanu', 'Adrian', 'Lect');
INSERT INTO profesori VALUES ('p4', 'Miroiu', 'Maria', 'Lect');
INSERT INTO profesori VALUES ('p5', 'Tanase', 'Marinela', 'Conf');
INSERT INTO profesori VALUES ('p6', 'Andronescu', 'Stelian-Corneliu', 'Lect');
INSERT INTO profesori VALUES ('p7', 'Georgescu', 'Raluca-Mihaela', 'Lect');
INSERT INTO profesori VALUES ('p8', 'Balcau', 'Costel', 'Conf');
INSERT INTO profesori VALUES ('p9', 'Balanescu', 'Tudor', 'Prof');
INSERT INTO profesori VALUES ('p10', 'Constantin', 'Doru', 'Conf');
INSERT INTO profesori VALUES ('p11', 'Popescu', 'Doru-Anastasiu', 'Conf');
INSERT INTO profesori VALUES ('p12', 'Deaconu', 'Laurentiu-Cristian', 'Lect');

-- populare tabela didactic
INSERT INTO didactic VALUES ('p1','10');
INSERT INTO didactic VALUES ('p2','11');
INSERT INTO didactic VALUES ('p3','12');
INSERT INTO didactic VALUES ('p4','13');
INSERT INTO didactic VALUES ('p6','14');
INSERT INTO didactic VALUES ('p7','20');
INSERT INTO didactic VALUES ('p8','21');
INSERT INTO didactic VALUES ('p9','22');
INSERT INTO didactic VALUES ('p2','23');
INSERT INTO didactic VALUES ('p10','24');
INSERT INTO didactic VALUES ('p11','30');
INSERT INTO didactic VALUES ('p10','31');
INSERT INTO didactic VALUES ('p1','32');
INSERT INTO didactic VALUES ('p12','33');
INSERT INTO didactic VALUES ('p2','34');
INSERT INTO didactic VALUES ('p11','35');
INSERT INTO didactic VALUES ('p11','40');
INSERT INTO didactic VALUES ('p8','41');
INSERT INTO didactic VALUES ('p3','42');
INSERT INTO didactic VALUES ('p9','43');
INSERT INTO didactic VALUES ('p4','44');


-- populare tabel note - master au completate pt anii 1-3
INSERT INTO note VALUES ('501', '10',  8, TO_DATE('17/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '10',  9, TO_DATE('17/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '10',  6, TO_DATE('17/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '11',  7, TO_DATE('05/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '11',  10, TO_DATE('05/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '11',  7, TO_DATE('05/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '12',  8, TO_DATE('23/01/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '12',  6, TO_DATE('23/01/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '12',  9, TO_DATE('23/01/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '13',  8, TO_DATE('19/01/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '13',  7, TO_DATE('19/01/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '13',  7, TO_DATE('19/01/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '14',  9, TO_DATE('10/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '14',  10, TO_DATE('10/02/2015', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '14',  8, TO_DATE('10/02/2015', 'dd/mm/yyyy'));

INSERT INTO note VALUES ('501', '20',  8, TO_DATE('11/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '20',  8, TO_DATE('11/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '20',  7, TO_DATE('11/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '21',  6, TO_DATE('16/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '21',  9, TO_DATE('16/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '21',  7, TO_DATE('16/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '22',  8, TO_DATE('28/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '22',  8, TO_DATE('28/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '22',  9, TO_DATE('28/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '23',  9, TO_DATE('28/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '23',  10, TO_DATE('28/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '23',  9, TO_DATE('22/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '24',  7, TO_DATE('22/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '24',  7, TO_DATE('22/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '24',  7, TO_DATE('22/01/2016', 'dd/mm/yyyy'));

INSERT INTO note VALUES ('501', '30',  6, TO_DATE('19/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '30',  8, TO_DATE('19/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '30',  9, TO_DATE('19/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '31',  7, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '31',  10, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '31',  8, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '32',  7, TO_DATE('03/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '32',  10, TO_DATE('03/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '32',  8, TO_DATE('03/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '33',  8, TO_DATE('09/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '33',  9, TO_DATE('09/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '33',  7, TO_DATE('09/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '34',  7, TO_DATE('14/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '34',  8, TO_DATE('14/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '34',  6, TO_DATE('14/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '35',  8, TO_DATE('19/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '35',  9, TO_DATE('19/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '35',  5, TO_DATE('19/02/2017', 'dd/mm/yyyy'));

INSERT INTO note VALUES ('501', '40',  8, TO_DATE('19/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '40',  9, TO_DATE('19/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '40',  7, TO_DATE('19/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '41',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '41',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '41',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '42',  7, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '42',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '42',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '43',  8, TO_DATE('09/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '43',  8, TO_DATE('09/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '43',  8, TO_DATE('09/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('501', '44',  9, TO_DATE('14/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('502', '44',  8, TO_DATE('14/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('503', '44',  6, TO_DATE('14/02/2018', 'dd/mm/yyyy'));


--anul 3
INSERT INTO note VALUES ('601', '10',  6, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '10',  7, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '10',  9, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '10',  8, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '10',  10, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '10',  7, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '10',  8, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '10',  7, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '10',  6, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '10',  6, TO_DATE('17/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '11',  6, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '11',  7, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '11',  9, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '11',  8, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '11',  9, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '11',  7, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '11',  8, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '11',  7, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '11',  6, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '11',  6, TO_DATE('21/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '12',  7, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '12',  8, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '12',  6, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '12',  6, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '12',  8, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '12',  9, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '12',  7, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '12',  5, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '12',  8, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '12',  6, TO_DATE('25/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '13',  9, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '13',  8, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '13',  7, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '13',  7, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '13',  8, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '13',  7, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '13',  7, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '13',  7, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '13',  9, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '13',  7, TO_DATE('30/01/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '14',  8, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '14',  8, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '14',  7, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '14',  6, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '14',  8, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '14',  7, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '14',  8, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '14',  7, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '14',  9, TO_DATE('05/02/2016', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '14',  8, TO_DATE('05/02/2016', 'dd/mm/yyyy'));


INSERT INTO note VALUES ('601', '20',  6, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '20',  7, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '20',  7, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '20',  8, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '20',  9, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '20',  7, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '20',  8, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '20',  7, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '20',  6, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '20',  8, TO_DATE('18/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '21',  6, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '21',  7, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '21',  9, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '21',  8, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '21',  8, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '21',  7, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '21',  8, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '21',  6, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '21',  8, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '21',  7, TO_DATE('22/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '22',  7, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '22',  8, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '22',  6, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '22',  8, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '22',  8, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '22',  9, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '22',  7, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '22',  5, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '22',  8, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '22',  6, TO_DATE('27/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '23',  9, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '23',  8, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '23',  7, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '23',  7, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '23',  8, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '23',  7, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '23',  7, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '23',  7, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '23',  9, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '23',  7, TO_DATE('31/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '24',  8, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '24',  8, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '24',  7, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '24',  6, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '24',  8, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '24',  7, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '24',  8, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '24',  7, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '24',  9, TO_DATE('07/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '24',  8, TO_DATE('07/02/2017', 'dd/mm/yyyy'));


INSERT INTO note VALUES ('601', '30',  6, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '30',  8, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '30',  7, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '30',  8, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '30',  7, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '30',  7, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '30',  8, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '30',  6, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '30',  6, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '30',  8, TO_DATE('15/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '31',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '31',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '31',  9, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '31',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '31',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '31',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '31',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '31',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '31',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '31',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '32',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '32',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '32',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '32',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '32',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '32',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '32',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '32',  5, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '32',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '32',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '33',  9, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '33',  8, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '33',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '33',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '33',  8, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '33',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '33',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '33',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '33',  9, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '33',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '34',  8, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '34',  8, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '34',  7, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '34',  6, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '34',  8, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '34',  7, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '34',  8, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '34',  7, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '34',  9, TO_DATE('06/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '35',  7, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('601', '35',  8, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('602', '35',  8, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('603', '35',  7, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('604', '35',  6, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('605', '35',  7, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('606', '35',  5, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('607', '35',  8, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('608', '35',  7, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('609', '35',  9, TO_DATE('15/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('610', '35',  8, TO_DATE('15/02/2018', 'dd/mm/yyyy'));

--anul 2
INSERT INTO note VALUES ('701', '10',  6, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '10',  7, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '10',  9, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '10',  8, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '10',  10, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '10',  7, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '10',  8, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '10',  7, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '10',  6, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '10',  6, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '10',  6, TO_DATE('17/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '11',  6, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '11',  7, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '11',  9, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '11',  8, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '11',  9, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '11',  7, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '11',  8, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '11',  7, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '11',  6, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '11',  6, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '11',  6, TO_DATE('21/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '12',  7, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '12',  8, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '12',  6, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '12',  6, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '12',  8, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '12',  9, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '12',  7, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '12',  5, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '12',  8, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '12',  6, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '12',  6, TO_DATE('25/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '13',  9, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '13',  8, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '13',  7, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '13',  7, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '13',  8, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '13',  7, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '13',  7, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '13',  7, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '13',  9, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '13',  7, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '13',  7, TO_DATE('30/01/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '14',  8, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '14',  8, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '14',  7, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '14',  6, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '14',  8, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '14',  7, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '14',  8, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '14',  7, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '14',  9, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '14',  8, TO_DATE('05/02/2017', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '14',  8, TO_DATE('05/02/2017', 'dd/mm/yyyy'));


INSERT INTO note VALUES ('701', '20',  6, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '20',  7, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '20',  9, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '20',  8, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '20',  10, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '20',  7, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '20',  8, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '20',  7, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '20',  6, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '20',  6, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '20',  6, TO_DATE('17/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '21',  6, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '21',  7, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '21',  9, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '21',  8, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '21',  9, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '21',  7, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '21',  8, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '21',  7, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '21',  6, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '21',  6, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '21',  6, TO_DATE('21/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '22',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '22',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '22',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '22',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '22',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '22',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '22',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '22',  5, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '22',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '22',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '22',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '23',  9, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '23',  8, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '23',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '23',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '23',  8, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '23',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '23',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '23',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '23',  9, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '23',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '23',  7, TO_DATE('30/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('701', '24',  8, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('702', '24',  8, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('703', '24',  7, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('704', '24',  6, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('705', '24',  8, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('706', '24',  7, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('707', '24',  8, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('708', '24',  7, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('709', '24',  9, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('710', '24',  8, TO_DATE('05/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('711', '24',  8, TO_DATE('05/02/2018', 'dd/mm/yyyy'));

--anul I
INSERT INTO note VALUES ('801', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('802', '10',  7, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('803', '10',  9, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('804', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('805', '10',  10, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('806', '10',  7, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('807', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('808', '10',  7, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('809', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('810', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('811', '10',  7, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('812', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('813', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('814', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('815', '10',  9, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('816', '10',  10, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('817', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('818', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('819', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('820', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('821', '10',  7, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('822', '10',  9, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('823', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('824', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('825', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('827', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('828', '10',  9, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('829', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('830', '10',  6, TO_DATE('13/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('831', '10',  8, TO_DATE('13/01/2018', 'dd/mm/yyyy'));


INSERT INTO note VALUES ('801', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('802', '11',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('803', '11',  9, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('804', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('805', '11',  10, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('806', '11',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('807', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('808', '11',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('809', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('810', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('811', '11',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('812', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('813', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('814', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('815', '11',  9, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('816', '11',  10, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('817', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('818', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('819', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('820', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('821', '11',  7, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('822', '11',  9, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('823', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('824', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('825', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('827', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('828', '11',  9, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('829', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('830', '11',  6, TO_DATE('20/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('831', '11',  8, TO_DATE('20/01/2018', 'dd/mm/yyyy'));


INSERT INTO note VALUES ('801', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('802', '12',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('803', '12',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('804', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('805', '12',  10, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('806', '12',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('807', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('808', '12',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('809', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('810', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('811', '12',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('812', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('813', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('814', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('815', '12',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('816', '12',  10, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('817', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('818', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('819', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('820', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('821', '12',  7, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('822', '12',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('823', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('824', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('825', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('827', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('828', '12',  9, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('829', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('830', '12',  6, TO_DATE('25/01/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('831', '12',  8, TO_DATE('25/01/2018', 'dd/mm/yyyy'));



INSERT INTO note VALUES ('801', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('802', '13',  7, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('803', '13',  9, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('804', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('805', '13',  10, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('806', '13',  7, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('807', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('808', '13',  7, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('809', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('810', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('811', '13',  7, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('812', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('813', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('814', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('815', '13',  9, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('816', '13',  10, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('817', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('818', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('819', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('820', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('821', '13',  7, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('822', '13',  9, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('823', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('824', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('825', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('827', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('828', '13',  9, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('829', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('830', '13',  6, TO_DATE('03/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('831', '13',  8, TO_DATE('03/02/2018', 'dd/mm/yyyy'));

INSERT INTO note VALUES ('801', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('802', '14',  7, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('803', '14',  9, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('804', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('805', '14',  10, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('806', '14',  7, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('807', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('808', '14',  7, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('809', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('810', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('811', '14',  7, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('812', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('813', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('814', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('815', '14',  9, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('816', '14',  10, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('817', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('818', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('819', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('820', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('821', '14',  7, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('822', '14',  9, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('823', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('824', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('825', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('827', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('828', '14',  9, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('829', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('830', '14',  6, TO_DATE('10/02/2018', 'dd/mm/yyyy'));
INSERT INTO note VALUES ('831', '14',  8, TO_DATE('10/02/2018', 'dd/mm/yyyy'));

COMMIT;









CREATE OR REPLACE TRIGGER student23.studenti_del
BEFORE DELETE OR UPDATE ON student23.studenti
BEGIN
    raise_application_error(-20001,'Records can not be deleted or updated');
END;

CREATE OR REPLACE TRIGGER student23.cursuri_del
BEFORE DELETE OR UPDATE ON student23.cursuri
BEGIN
    raise_application_error(-20001,'Records can not be deleted or updated');
END;

CREATE OR REPLACE TRIGGER student23.note_del
BEFORE DELETE OR UPDATE ON student23.note
BEGIN
    raise_application_error(-20001,'Records can not be deleted or updated');
END;

CREATE OR REPLACE TRIGGER student23.profesori_del
BEFORE DELETE OR UPDATE ON student23.profesori
BEGIN
    raise_application_error(-20001,'Records can not be deleted or updated');
END;

CREATE OR REPLACE TRIGGER student23.didactic_del
BEFORE DELETE OR UPDATE ON student23.didactic
BEGIN
    raise_application_error(-20001,'Records can not be deleted or updated');
END;
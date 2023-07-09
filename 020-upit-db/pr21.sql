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
'
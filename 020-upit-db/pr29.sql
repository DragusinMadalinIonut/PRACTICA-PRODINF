-- 29. Modificari interogarare de la punctul 27 asa incat sa afisati si cursurile ce nu au inca alocat un profesor.
SELECT p.nume, p.prenume, c.titlu_curs
FROM profesori p
RIGHT JOIN didactic d ON p.id_prof = d.id_prof
RIGHT JOIN cursuri c ON d.id_curs = c.id_curs;
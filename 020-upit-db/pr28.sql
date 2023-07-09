-- 28. Modificati interogarea de la punctul 27 asa incat sa includeti si profesorii ce nu tin niciun curs.
SELECT p.nume, p.prenume, c.titlu_curs
FROM profesori p
LEFT JOIN didactic d ON p.id_prof = d.id_prof
LEFT JOIN cursuri c ON d.id_curs = c.id_curs;
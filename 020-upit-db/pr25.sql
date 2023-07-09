-- 25. Afisati studentii, notele lor, cursul si profesorii ce au pus notele.
SELECT s.nume, s.prenume, n.valoare, c.titlu_curs, p.nume, p.prenume
FROM studenti s
JOIN note n ON s.nr_matricol = n.nr_matricol
JOIN cursuri c ON n.id_curs = c.id_curs
JOIN didactic d ON c.id_curs = d.id_curs
JOIN profesori p ON d.id_prof = p.id_prof;

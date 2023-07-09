-- 34. Sa se afiseze studentii care au luat nota 7 sau nota 10 la Fundamentele programarii intr-o zi de joi.
SELECT s.nume, s.prenume
FROM studenti s
INNER JOIN note n ON s.nr_matricol = n.nr_matricol
INNER JOIN cursuri c ON n.id_curs = c.id_curs
WHERE c.titlu_curs = 'Fundamentele programarii'
  AND (n.valoare = 7 OR n.valoare = 10)
  AND TO_CHAR(n.data_notare, 'DAY') = 'THURSDAY';

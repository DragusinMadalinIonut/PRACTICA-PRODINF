-- Afisati studentii nascuti intre 1 martie 1996 si 10 noiembrie 1997. Ordonati
--descrescator dupa anul de studiu.

SELECT *
FROM studenti
WHERE data_nastere BETWEEN TO_DATE('1996-03-01', 'YYYY-MM-DD') AND TO_DATE('1997-11-10', 'YYYY-MM-DD')
ORDER BY an DESC;
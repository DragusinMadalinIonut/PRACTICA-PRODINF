 -- Afisati toate informatiile despre studentii care au doua aparitii ale literei ‘i’ in
--prenume

SELECT *
FROM studenti
WHERE LENGTH(prenume) - LENGTH(REPLACE(prenume, 'i', '')) = 2;


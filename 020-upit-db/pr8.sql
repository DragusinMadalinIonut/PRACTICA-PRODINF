-- Afisati studentii care iau bursa si sunt in anii 2 sau 3 de studiu. Ordonati alfabetic
--crescator dupa nume si descrescator dupa prenume.

SELECT *
FROM studenti
WHERE an IN (2, 3) AND bursa IS NOT NULL
ORDER BY nume ASC, prenume DESC;

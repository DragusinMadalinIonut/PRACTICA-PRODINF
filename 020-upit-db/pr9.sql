-- Afisati studentii care iau bursa precum si valoarea bursei daca aceasta ar fi marita
--cu 25%. Valoarea calculata va fi rotunjita (fara zecimale).

SELECT nume, prenume, bursa, ROUND(bursa * 1.25) AS bursa_marita
FROM studenti
WHERE bursa IS NOT NULL;

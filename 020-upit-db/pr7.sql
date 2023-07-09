-- Afisati studentii ce nu iau bursa.

SELECT *
FROM studenti
WHERE bursa IS NULL;
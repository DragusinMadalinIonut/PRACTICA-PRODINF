 -- Afisati numele studentilor care iau cea mai mare bursa acordata.

SELECT nume, prenume
FROM studenti
WHERE bursa = (SELECT MAX(bursa) FROM studenti);


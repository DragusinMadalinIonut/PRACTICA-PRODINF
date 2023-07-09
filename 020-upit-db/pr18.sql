-- Afisati valoarea bursei pe 10 caractere completand valoarea numerica cu caracterul $. Doar pentru studentii ce au bursa.

SELECT LPAD(CONCAT('$', bursa), 10, '$') AS valoare_bursa
FROM studenti
WHERE bursa IS NOT NULL;

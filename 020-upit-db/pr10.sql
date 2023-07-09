-- Afisati studentii al caror nume incepe cu B si nu sunt in anul 1 de studiu

SELECT *
FROM studenti
WHERE nume LIKE 'B%' AND an != 1;

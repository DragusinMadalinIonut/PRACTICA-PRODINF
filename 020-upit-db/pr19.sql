 -- Pentru profesorii al caror nume începe cu T, 
 --afisati numele cu prima litera mica si restul mari, precum si lungimea (nr. de caractere a) numelui

SELECT CONCAT(
    LOWER(SUBSTR(nume, 1, 1)),
    UPPER(SUBSTR(nume, 2))) AS nume_formatat,
    LENGTH(nume) AS lungime_nume
FROM profesori
WHERE nume LIKE 'T%';

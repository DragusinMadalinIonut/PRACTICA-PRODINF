-- 35. Afisati numarul de studenti din fiecare an
SELECT an, COUNT(*)  numar_studenti
FROM studenti
GROUP BY an;
-- 36. Afisati numarul de studenti din fiecare grupa a fiecarui an de studiu si specificati cati dintre acestia sunt bursieri
SELECT an, grupa, COUNT(*)  numar_studenti, SUM(CASE WHEN bursa IS NOT NULL THEN 1 ELSE 0 END)  numar_bursieri
FROM studenti
GROUP BY an, grupa;
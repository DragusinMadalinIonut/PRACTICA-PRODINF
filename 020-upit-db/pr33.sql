-- 33. Afisati denumirile cursurilor la care s-au pus note cel mult egale cu 8 (<=8)
SELECT c.titlu_curs
FROM cursuri c
INNER JOIN note n ON c.id_curs = n.id_curs
WHERE n.valoare <= 8;
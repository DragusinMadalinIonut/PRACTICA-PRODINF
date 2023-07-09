-- 27. Afisa?i profesorii (numele ?i prenumele) impreuna cu cursurile pe care fiecare le ?ine.
SELECT p.nume, p.prenume, c.titlu_curs
FROM profesori p
JOIN didactic d ON p.id_prof = d.id_prof
JOIN cursuri c ON d.id_curs = c.id_curs;
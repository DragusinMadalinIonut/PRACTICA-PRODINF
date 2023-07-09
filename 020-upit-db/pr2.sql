-- Afisati nume, prenume, bursa si jumatate din valoarea bursei studentilor la care a
--fost adaugat in prealabil 100 (aveti in vedere si precendenta operatorilor).

SELECT nume, prenume, bursa, bursa / 2 AS jumatate_bursa
FROM studenti
WHERE bursa > 0;


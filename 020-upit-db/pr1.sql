-- Scrieti o interogare pentru a afisa numele, prenumele, anul de studiu si data
--nasterii pentru toti studentii. Ordonati rezultatele dupa nume si prenume.

SELECT nume, prenume, an, data_nastere
FROM studenti
ORDER BY nume, prenume;
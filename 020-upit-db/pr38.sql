-- 38. Afisati valoarea bursei/cap de student (se considera ca studentii care nu sunt bursieri primesc 0 RON); altfel spus: cat se cheltuieste în medie pentru un student?
SELECT AVG(COALESCE(bursa, 0))  valoare_medie_bursa
FROM studenti;
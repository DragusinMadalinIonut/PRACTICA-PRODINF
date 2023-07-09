-- 24. Pentru studentii bursieri (doar pentru ei) afisati numele studentului si bursa in stelute:
--  fiecare steluta valoreaza 50 RON. In tabel, alineati stelutele la dreapta.
SELECT nume, prenume, RPAD('*', FLOOR(bursa / 50), '*')  bursa
FROM studenti
WHERE bursa IS NOT NULL;

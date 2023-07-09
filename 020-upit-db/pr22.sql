-- 22. Afisati pentru fiecare student numele, varsta acestuia la data curenta sub forma ani | luni | zile.
SELECT nume, prenume, EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM data_nastere) AS ani,
       EXTRACT(MONTH FROM SYSDATE) - EXTRACT(MONTH FROM data_nastere) AS luni,
       EXTRACT(DAY FROM SYSDATE) - EXTRACT(DAY FROM data_nastere) AS zile
FROM studenti;
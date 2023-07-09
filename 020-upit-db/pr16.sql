-- Afisati ziua din saptamana in care s-a nascut fiecare student

SELECT nume, prenume, TO_CHAR(data_nastere, 'DAY')  ziua_nastere
FROM studenti;

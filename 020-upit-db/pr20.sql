-- 20. Pentru fiecare student afisati numele, data de nastere, data la care studentul urmeaza sa isi sarbatoreasca ziua de nastere in anul curent.
SELECT nume, data_nastere, TO_CHAR(ADD_MONTHS(data_nastere, EXTRACT(MONTH FROM SYSDATE) - EXTRACT(MONTH FROM data_nastere)), 'DD/MM/YYYY') AS data_sarbatoare
FROM studenti;
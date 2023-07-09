-- Afisati numele concatenat cu prenumele, urmat de virgula si anul de studiu. Ordonati crescator dupa anul de studiu. 
--Denumiti coloana: “Studenti / ani de studiu”.

SELECT nume, prenume, data_nastere
FROM studenti
WHERE data_nastere BETWEEN TO_DATE('1996-03-01', 'YYYY-MM-DD') AND TO_DATE('1997-11-10', 'YYYY-MM-DD')
ORDER BY data_nastere;

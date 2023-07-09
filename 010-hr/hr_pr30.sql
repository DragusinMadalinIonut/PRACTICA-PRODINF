-- 30. Scrieți o interogare pentru a afișa numele angajatului (numele și prenumele) și data de angajare pentru toți angajații din același departament ca si Clara (prenume). Excludeti-o pe Clara.

SELECT CONCAT(first_name, ' ', last_name) AS Nume_Angajat, hire_date
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    WHERE first_name = 'Clara'
) AND first_name != 'Clara';

-- 24. Afisati anii si numarul total de angajati care au fost angajati in acel an.

SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) AS num_employees
FROM employees
GROUP BY EXTRACT(YEAR FROM hire_date);

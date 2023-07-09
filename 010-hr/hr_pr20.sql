-- 20. Afisati toti 
 -- angajatii care au fost angajati in prima jumatate a lunii (inainte de ziua de 16 a lunii).

SELECT *
FROM employees
WHERE EXTRACT(DAY FROM hire_date) < 16;

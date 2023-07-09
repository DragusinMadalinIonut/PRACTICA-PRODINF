-- 3. Afisati numele de familie si salariul pentru toti angajatii al caror salariu nu se afla in intervalul $5,000 - $12,000.

SELECT last_name, salary
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 12000;
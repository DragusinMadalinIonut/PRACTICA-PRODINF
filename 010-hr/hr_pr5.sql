-- 5. Afisati numele de familie si numele departamentului 
-- pentru angajatii din departamentele 20 sau 50 in ordine alfabetica crescatoare dupa nume.

SELECT last_name, department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE departments.department_id IN (20, 50)
ORDER BY last_name ASC;

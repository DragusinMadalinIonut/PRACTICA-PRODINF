-- 32. Scrieți o interogare pentru a identifica toți angajații 
-- care câștigă mai mult decât media și care lucrează în oricare dintre departamentele IT.

SELECT e.*
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > (SELECT AVG(salary) FROM employees) AND d.department_name LIKE '%IT%';

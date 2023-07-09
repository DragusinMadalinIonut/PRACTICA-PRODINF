-- 18. Gasiti numarul angajatilor al caror nume de familie se termina in litera “n”.

SELECT COUNT(*) AS num_employees
FROM employees
WHERE last_name LIKE '%n';

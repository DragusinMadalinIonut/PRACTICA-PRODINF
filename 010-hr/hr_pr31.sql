-- 31. Scrieți o interogare pentru a afișa numărul angajatului, numele (numele și prenumele) și titlul postului pentru toți angajații al căror salariu este mai mic 
-- decât orice salariu al acelor angajați al căror titlu de post este MK_MAN.

SELECT e.employee_id, e.first_name || ' ' || e.last_name AS full_name, j.job_title
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
WHERE e.salary < (SELECT MIN(salary) FROM employees WHERE job_id = (SELECT job_id FROM jobs WHERE job_title = 'MK_MAN'));

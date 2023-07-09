-- 17. Creati-- 17. Creati o interogare care sa afiseze numele departamentului, numele locatiei, denumirea functiei si salariul al acelor angajati care lucreaza intr-o locatie specifica (data).

SELECT d.department_name, l.location_name, j.job_title, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN jobs j ON e.job_id = j.job_id
WHERE e.hire_date <= 19/09/2000
AND l.location_name = Pitesti
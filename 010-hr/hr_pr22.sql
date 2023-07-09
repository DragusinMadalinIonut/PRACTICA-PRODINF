-- 22. Creați o interogare care afișează un departament
-- în care nu lucrează reprezentanți de vânzări. Includeti la iesire, numarul departamentului, numele departamentului si locatia.

SELECT d.department_id, d.department_name, l.location_name
FROM departments d
JOIN locations l ON d.location_id = l.location_id
WHERE d.department_id NOT IN (
    SELECT department_id
    FROM employees
    WHERE job_id = 'SA_REP'
);
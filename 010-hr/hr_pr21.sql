-- 21. Creati o interogare pentru a afisa numarul departamentelor cu salariul mediu cel mai mare.

SELECT COUNT(*)  num_departments
FROM (
    SELECT AVG(salary)  avg_salary
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) = (
        SELECT MAX(AVG(salary))
        FROM employees
        GROUP BY department_id
    )
) subquery;


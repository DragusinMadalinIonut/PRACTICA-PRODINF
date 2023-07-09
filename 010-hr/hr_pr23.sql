-- 23a) To display the department number, department name, and the number of employees for the department with the highest number of employees
SELECT department_id, department_name, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id, department_name
HAVING COUNT(*) = (
    SELECT MAX(employee_count)
    FROM (
        SELECT COUNT(*) AS employee_count
        FROM employees
        GROUP BY department_id
    )
);

-- 23b) To display the department number, department name, and the number of employees for the department with the lowest number of employees
SELECT department_id, department_name, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id, department_name
HAVING COUNT(*) = (
    SELECT MIN(employee_count)
    FROM (
        SELECT COUNT(*) AS employee_count
        FROM employees
        GROUP BY department_id
    )
);

-- 23c) To display the department number, department name, and the number of employees for departments with fewer than three employees
SELECT department_id, department_name, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id, department_name
HAVING COUNT(*) < 3;

-- 24) To display the years and the total number of employees hired in each year
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) AS num_employees
FROM employees
GROUP BY EXTRACT(YEAR FROM hire_date);

-- 25) To display the countries and the number of locations in each country
SELECT c.country_name, COUNT(*) AS num_locations
FROM locations l
JOIN countries c ON l.country_id = c.country_id
GROUP BY c.country_name;

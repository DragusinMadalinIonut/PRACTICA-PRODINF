-- 19. Creati o interogare care afiseaza numele, locatia si numarul de angajati pentru fiecare departament. 
-- Asigurati-va ca rezultatul include, de asemenea, si departamentele fara angajati.

SELECT d.department_name, l.city, COUNT(e.employee_id) AS num_employees
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
JOIN locations l ON d.location_id = l.location_id
GROUP BY d.department_name, l.city;

-- 16. Arătați numele și numerele tuturor managerilor împreună cu numărul de angajați care sunt subordonații fiecaruia.

SELECT m.employee_id  manager_id, m.last_name AS manager_name, COUNT(e.employee_id)  num_subordinates
FROM employees m
JOIN employees e ON m.employee_id = e.manager_id
GROUP BY m.employee_id, m.last_name;

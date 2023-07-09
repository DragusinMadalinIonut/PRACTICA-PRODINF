-- 14. Afisati la iesire, ID_Locatie, adresa strazii, orasul, statul sau provincia si tara.

SELECT e.last_name, e.job_id, d.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'Toronto';

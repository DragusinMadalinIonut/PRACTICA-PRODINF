-- 12. Gasiti diferenta dintre cel mai mare și cel mai mic salariu. Etichetati coloana Diferenta.


SELECT department_id, street_address, city, state_province, country_name
FROM departments
JOIN locations ON departments.location_id = locations.location_id
JOIN countries ON locations.country_id = countries.country_id;

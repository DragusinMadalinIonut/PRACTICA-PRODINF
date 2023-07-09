-- 11. Determinati numarul managerilor fara a lista angajatii. Etichetati coloana Numarul Managerilor. 
-- Sugestie: Folositi coloana Manager_ID din tabela cu angajati pentru a determina numarul managerilor.

SELECT COUNT(DISTINCT manager_id) AS "Numarul Managerilor"
FROM employees;


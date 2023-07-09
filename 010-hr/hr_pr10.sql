-- 10. Afisati numarul persoanelor cu acelasi loc de munca.

SELECT job_id, COUNT(*) AS numar_persoane
FROM employees
GROUP BY job_id;

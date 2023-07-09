-- 29. Scrieți o interogare pentru a afișa 
-- toate informațiile angajaților ale căror salarii sunt în intervalul cel mai mic salariu și 2500.
SELECT *
FROM employees
WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500;

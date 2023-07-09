-- 7. Afisati numele de familie, salariul si comisionul pentru toti 
-- angajatii care castiga comisioane. Sortați datele în ordine descrescătoare a salariilor și comisioanelor.

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

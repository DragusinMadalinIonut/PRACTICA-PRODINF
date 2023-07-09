-- 4. Afisati numele de familie, loc de munca (job ID) si data de inceput (data angajarii) 
-- pentru angajatii cu numele de familie Smith si Taylor. Ordonați rezultatele în ordine crescătoare după data angajarii.

SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Smith', 'Taylor')
ORDER BY hire_date ASC;
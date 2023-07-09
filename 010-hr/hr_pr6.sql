-- 6. Afisati numele de familie si denumirea functiei pentru toti angajatii care nu au un manager.

SELECT last_name, job_title
FROM employees
WHERE manager_id IS NULL;


-- 28. Scrieți o interogare în SQL pentru 
 -- a afișa ID-ul pentru acei angajați care au avut două sau mai multe locuri de muncă în trecut.

SELECT employee_id
FROM (
    SELECT employee_id, COUNT(job_id)  num_jobs
    FROM job_history
    GROUP BY employee_id
    HAVING COUNT(job_id) >= 2
);

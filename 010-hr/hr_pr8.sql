-- 8. G?si?i cel mai mare, cel mai mic salariu ?i salariul mediu al tuturor angaja?ilor. Eticheta?i coloanele Maxim, Minim, Suma ?i respectiv, Medie.
SELECT MAX(salary) AS Maxim, MIN(salary) AS Minim, SUM(salary) AS Suma, AVG(salary) AS Medie
FROM employees;
-- 26. Scrieti o interogare in SQL pentru a afisa 
-- intreg numele (numele si prenumele) si salariul pentru acei angajti care castiga sub 6000.

SELECT first_name || ' ' || last_name  nume_complet, salary
FROM employees
WHERE salary < 6000;

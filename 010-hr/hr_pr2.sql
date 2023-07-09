-- 2. Afisati numele de familie si salariul angajatilor care castiga mai mult de $12,000.

SELECT last_name, salary
FROM employees
WHERE salary > 12000;

 -- Afişaţi toţi studenţii care au în an cu ei macar un coleg care sa fie mai mic ca ei (vezi data naşterii).

SELECT 
    nume, 
    data_nastere, 
    TO_CHAR(ADD_MONTHS(data_nastere, 12 * (EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM data_nastere))), 'DD/MM/YYYY') AS data_sarbatoare
FROM studenti;

-- Afisati numele si media primelor trei studenti ordonati descrescator dupa medie.

SELECT nume, medie
FROM (
    SELECT nume, AVG(valoare)  medie
    FROM studenti
    LEFT JOIN note ON studenti.nr_matricol = note.nr_matricol
    GROUP BY studenti.nr_matricol, studenti.nume
    ORDER BY medie DESC
)
WHERE ROWNUM <= 3;

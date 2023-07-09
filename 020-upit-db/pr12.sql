-- Afisati toate informatiile despre studentii al caror prenume este “Mihaela”, “Mihai” sau “Anca”

SELECT *
FROM studenti
WHERE prenume IN ('Mihaela', 'Mihai', 'Anca');

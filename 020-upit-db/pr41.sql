-- Identificati studentii a caror medie este mai mare decat media tuturor notelor din baza de date. Afisati numele si media acestora.

SELECT s.nume, s.prenume, AVG(n.valoare) AS medie
FROM studenti s
JOIN note n ON s.nr_matricol = n.nr_matricol
GROUP BY s.nr_matricol, s.nume, s.prenume
HAVING AVG(n.valoare) > (SELECT AVG(valoare) FROM note);
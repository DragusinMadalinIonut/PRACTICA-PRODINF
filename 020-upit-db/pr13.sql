-- Afisati numele si prenumele profesorilor al caror prenume se termina cu litera ‘n’

SELECT nume, prenume
FROM profesori
WHERE SUBSTR(prenume, -1) = 'n';

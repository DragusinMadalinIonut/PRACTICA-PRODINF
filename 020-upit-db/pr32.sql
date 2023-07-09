SELECT s.nume AS nume_student, p.nume AS nume_profesor
FROM studenti s, profesori p
WHERE LENGTH(s.nume) = LENGTH(p.nume);

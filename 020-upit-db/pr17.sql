 -- Folosind concatenarea obtineti o coloana de forma ‘Elevul <Prenume> este in grupa <grupa>’

SELECT 'Elevul ' || prenume || ' este �n grupa ' || grupa AS informatii
FROM studenti;

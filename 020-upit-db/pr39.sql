SELECT valoare, COUNT(*)  numar_note
FROM note
GROUP BY valoare
ORDER BY valoare DESC;

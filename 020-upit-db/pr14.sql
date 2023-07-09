 -- Scrieti o interogare pentru a afisa data de astazi in forma an / luna / zi. Etichetati
--coloana cu “Astazi”.

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') AS "Ast?zi"
FROM dual;

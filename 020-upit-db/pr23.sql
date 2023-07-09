-- 23. Presupunand ca în urmatoarea luna bursa de 450 RON se mareste cu 10%, cea de 350 RON cu 15% si cea de 250 RON cu 20%, afisati pentru fiecare student numele acestuia, data corespunzatoare primei zile din luna urmatoare si valoarea bursei pe care o va încasa luna urmatoare. Pentru cei care nu iau bursa, se va afisa valoarea 0.
SELECT nume, ADD_MONTHS(TRUNC(SYSDATE, 'MM'), 1)  data_luna_urmatoare,
       CASE 
           WHEN bursa = 450 THEN ROUND(bursa * 1.10)
           WHEN bursa = 350 THEN ROUND(bursa * 1.15)
           WHEN bursa = 250 THEN ROUND(bursa * 1.20)
           ELSE 0
       END  valoare_bursa
FROM studenti;
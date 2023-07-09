-- 25. Afisati tarile si numarul locatiilor in acea tara.

SELECT c.country_name, COUNT(*) AS num_locations
FROM locations l
JOIN countries c ON l.country_id = c.country_id
GROUP BY c.country_name;

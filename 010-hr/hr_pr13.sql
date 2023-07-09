-- 13. Gasiti adresele tuturor departamentelor. Utilizati tabelele LOCATIONS si COUNTRIES

SELECT location_id ID_Locatie, street_address, city, state_province, country_name  Tara
FROM locations
JOIN countries ON locations.country_id = countries.country_id;

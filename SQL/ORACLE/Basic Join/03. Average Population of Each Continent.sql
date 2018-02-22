-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population))
FROM CITY INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;

-- Pattern		| Pengertian
-- ----------------------------
-- INNER JOIN	| Mengambil data dari multiple table

-- more : 
-- https://www.techonthenet.com/oracle/joins.php
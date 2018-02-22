-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT SUM(CITY.POPULATION)
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE
AND COUNTRY.CONTINENT = 'Asia';

-- Pattern		| Pengertian
-- ----------------------------

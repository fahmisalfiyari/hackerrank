-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT CITY.NAME
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE
AND COUNTRY.CONTINENT = 'Africa';

-- Pattern		| Pengertian
-- ----------------------------

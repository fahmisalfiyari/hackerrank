-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT DISTINCT CITY 
FROM STATION 
WHERE LOWER(SUBSTR(CITY,LENGTH(CITY),1)) IN ('a','i','u','e','o');

-- Pattern		| Pengertian
-- ----------------------------
-- LOWER		| hanya mengambil karakter huruf kecil
-- IN			| membership condition 
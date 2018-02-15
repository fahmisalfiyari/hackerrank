-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT DISTINCT CITY FROM STATION WHERE 
LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','i','u','e','o')
OR
LOWER(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','i','u','e','o');

-- Pattern		| Pengertian
-- ----------------------------
-- LOWER		| hanya mengambil karakter huruf kecil
-- NOT IN		| diluar membership condition 
-- SUBSTR		| memotong string dari (string, {posisi pertama pemotongan}, {jumlah karakter})
-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT * FROM (SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY),CITY) WHERE ROWNUM<2;

SELECT * FROM (SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC,CITY) WHERE ROWNUM<2;

-- Pattern		| Pengertian
-- ----------------------------
-- LENGTH		| menghitung panjang karakter
-- ROWNUM		| mengambil row dengan jumlah row yang telah ditentukan
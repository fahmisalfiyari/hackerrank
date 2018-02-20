-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;

-- Pattern		| Pengertian
-- ----------------------------
-- ROUND		| Pembulatan desimal

-- more : 
-- https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions135.htm

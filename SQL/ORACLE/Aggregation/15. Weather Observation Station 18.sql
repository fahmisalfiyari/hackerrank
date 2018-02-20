-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT ROUND((MAX(LAT_N)-MIN(LAT_N))+(MAX(LONG_W)-MIN(LONG_W)),4)
FROM STATION;

-- Pattern		| Pengertian
-- ----------------------------
-- ROUND		| Pembulatan desimal

-- more : 
-- https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions135.htm
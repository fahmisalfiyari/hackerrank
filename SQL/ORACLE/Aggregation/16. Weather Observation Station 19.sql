-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT CAST(SQRT((POWER(MAX(LAT_N)-MIN(LAT_N),2)) + (POWER(MAX(LONG_W)-MIN(LONG_W),2))) AS DECIMAL(16,4)) 
FROM STATION;

-- Pattern		| Pengertian
-- ----------------------------
-- CAST			| Mengkonversi tipe data
-- SQRT			| Akar
-- POWER		| Pangkat

-- more : 
-- https://www.techonthenet.com/oracle/functions/cast.php
-- https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions149.htm
-- https://www.techonthenet.com/oracle/functions/power.php

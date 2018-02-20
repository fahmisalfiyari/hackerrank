-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;

-- Pattern		| Pengertian
-- ----------------------------
-- CEIL 		| Pembulatan ke nilai integer terdekat

-- more: 
-- https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions017.htm
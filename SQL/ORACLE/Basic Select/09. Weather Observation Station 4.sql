-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

select count(CITY) - count(DISTINCT CITY) FROM STATION;

-- Pattern		| Pengertian
-- ----------------------------
-- count		| menghitung banyak nya data dalam kolom tertentu
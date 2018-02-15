-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT NAME FROM STUDENTS 
WHERE MARKS > 75
ORDER BY SUBSTR(NAME,-3), ID ASC;

-- Pattern		| Pengertian
-- ----------------------------
-- ASC			| Ascending
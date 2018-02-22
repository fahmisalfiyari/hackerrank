-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT 
CASE
    WHEN G.Grade < 8 THEN 'NULL'
    ELSE S.Name
END,
G.Grade,
S.Marks
FROM STUDENTS S INNER JOIN GRADES G
ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY G.Grade DESC, Name, Marks;

-- Pattern		| Pengertian
-- ----------------------------
-- INNER JOIN	| Mengambil data dari multiple table
-- BETWEEN		| Mengambil nilai diantara jarak antara 2 nilai

-- more : 
-- https://www.techonthenet.com/oracle/joins.php
-- https://www.techonthenet.com/oracle/between.php
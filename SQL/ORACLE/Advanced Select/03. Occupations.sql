-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT d,p,s,a
FROM
(SELECT Name, Occupation, (ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name)) 
AS row_num 
FROM OCCUPATIONS)
PIVOT
(
    MAX(Name) FOR Occupation IN (
        'Doctor' as d,
        'Professor' as p,
        'Actor' as a,
        'Singer' as s
    )
)
ORDER BY row_num;

-- Pattern		| Pengertian
-- ----------------------------
-- PIVOT		| klausa -> agregrasi hasil query dan merubah row menjadi kolom
-- ROW_NUMBER	| Analytical function, memunculkan nomer baris

-- more : 
-- https://www.techonthenet.com/oracle/pivot.php
-- https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions085.htm
-- https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions137.htm
-- https://www.techonthenet.com/oracle/functions/rownum.php

-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT Name || '(' || SUBSTR(Occupation,1,1) || ')' as Name
FROM OCCUPATIONS
ORDER BY Name ASC;

SELECT 'There are a total of ' || COUNT(Occupation) || ' ' || LOWER(Occupation) || 's.'
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation),Occupation;

-- Pattern		| Pengertian
-- ----------------------------
-- COUNT		| Menghitung jumlah row
-- ||			| Operator concat 2 string atau lebih

-- more : https://www.techonthenet.com/oracle/functions/concat2.php
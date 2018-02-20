-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT CASE
    WHEN A+B <= C OR A+C <= B OR B+C <= A THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR A = C OR B = C THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM TRIANGLES;

-- Pattern		| Pengertian
-- ----------------------------
-- CASE			| PL SQL dengan logika IF (disini memakai when) THEN ELSE

-- more : https://docs.oracle.com/cd/B19306_01/server.102/b14200/expressions004.htm
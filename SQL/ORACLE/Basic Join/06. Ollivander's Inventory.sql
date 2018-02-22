-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT a.id, b.age, a.coins_needed, a.power
FROM WANDS a
INNER JOIN WANDS_PROPERTY b
ON a.code = b.code
WHERE b.is_evil <> 1
AND  a.coins_needed = 
    (SELECT MIN(c.coins_needed)
    FROM WANDS c
    INNER JOIN WANDS_PROPERTY d
    ON c.code = d.code
    WHERE d.age = b.age
    AND c.power = a.power)
ORDER BY a.power DESC, b.age DESC;


-- Pattern		| Pengertian
-- ----------------------------
-- INNER JOIN	| Mengambil data dari multiple table

-- more : 
-- https://www.techonthenet.com/oracle/joins.php
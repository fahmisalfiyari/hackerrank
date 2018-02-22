-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT h.hacker_id, h.name, count(c.hacker_id) as c_count
FROM HACKERS h
INNER JOIN CHALLENGES c
ON c.hacker_id = h.hacker_id
HAVING
    COUNT(c.challenge_id) IN
        (SELECT MAX(temp1.cnt)
        FROM (SELECT COUNT(hacker_id) AS cnt
             FROM Challenges
             GROUP BY hacker_id
             ORDER BY hacker_id) temp1)
    OR COUNT(c.challenge_id) IN
        (SELECT t.cnt
        FROM (SELECT COUNT(*) AS cnt
             FROM Challenges
             GROUP BY hacker_id) t
        GROUP BY t.cnt
        HAVING COUNT(t.cnt) = 1)
GROUP BY h.hacker_id, h.name
ORDER BY
COUNT(c.challenge_id) DESC, h.hacker_id;


-- Pattern		| Pengertian
-- ----------------------------
-- INNER JOIN	| Mengambil data dari multiple table
-- HAVING		| Return row hanya jika kondisinya TRUE

-- more : 
-- https://www.techonthenet.com/oracle/joins.php
-- https://www.techonthenet.com/oracle/having.php
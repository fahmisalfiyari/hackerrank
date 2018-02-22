-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT hacker_id, name, sum(score) score
FROM
(SELECT s.hacker_id, h.name, MAX(s.score) score
FROM HACKERS h
INNER JOIN SUBMISSIONS s
ON h.hacker_id = s.hacker_id
WHERE s.score <> 0
GROUP BY s.hacker_id, h.name, s.challenge_id)
GROUP BY hacker_id,name
ORDER BY score DESC, hacker_id;


-- Pattern		| Pengertian
-- ----------------------------
-- INNER JOIN	| Mengambil data dari multiple table
-- HAVING		| Return row hanya jika kondisinya TRUE

-- more : 
-- https://www.techonthenet.com/oracle/joins.php
-- https://www.techonthenet.com/oracle/having.php
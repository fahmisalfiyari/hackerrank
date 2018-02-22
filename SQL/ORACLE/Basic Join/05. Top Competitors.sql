-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT H.hacker_id, H.name
FROM SUBMISSIONS S
INNER JOIN CHALLENGES C
ON S.challenge_id = C.challenge_id
INNER JOIN DIFFICULTY D
ON C.difficulty_level = D.difficulty_level
INNER JOIN HACKERS H
ON S.hacker_id = H.hacker_id
WHERE S.score = D.score
HAVING COUNT(H.hacker_id) > 1
GROUP BY H.hacker_id, H.name
ORDER BY COUNT(H.hacker_id) DESC, H.hacker_id ASC;

-- Pattern		| Pengertian
-- ----------------------------
-- INNER JOIN	| Mengambil data dari multiple table

-- more : 
-- https://www.techonthenet.com/oracle/joins.php
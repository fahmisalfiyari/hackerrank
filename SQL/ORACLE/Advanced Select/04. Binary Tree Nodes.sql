-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT N,
(CASE 
    WHEN P IS NULL THEN 'Root' 
    WHEN EXISTS (SELECT P FROM BST B WHERE A.N=B.P) THEN 'Inner' 
    ELSE 'Leaf' 
END) 
FROM BST A 
ORDER BY N;

-- Pattern		| Pengertian
-- ----------------------------
-- EXISTS		| biasa disandingkan dengan subquery, dan kondisinya dipenuhi jika subquery tsb
-- 				  menghasilkan setidaknya 1 row

-- more : 
-- https://www.techonthenet.com/oracle/alias.php
-- https://www.techonthenet.com/oracle/exists.php

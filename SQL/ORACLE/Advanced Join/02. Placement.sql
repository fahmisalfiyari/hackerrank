-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT 
    s.Name
FROM 
    Students s, 
    Friends f, 
    Packages p, 
    Packages p2
WHERE s.ID = f.ID
AND f.Friend_ID = p2.ID 
AND s.ID = p.ID
AND p.Salary < p2.Salary 
ORDER BY p2.Salary;


-- Pattern		| Pengertian
-- ----------------------------

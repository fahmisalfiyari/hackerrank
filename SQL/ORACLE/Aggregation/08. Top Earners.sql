-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT * FROM 
(SELECT 
    MAX(Months * Salary),
    COUNT(EMPLOYEE_ID)
FROM EMPLOYEE
GROUP BY (Months * Salary)
ORDER BY (Months * Salary) DESC)
WHERE ROWNUM = 1;

-- Pattern		| Pengertian
-- ----------------------------
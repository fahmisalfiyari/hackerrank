-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

SELECT 
    MIN(startDate), 
    MAX(endDate)
FROM
    ( SELECT 
        Start_Date startDate, 
        End_Date endDate, 
        end_date - row_number() over(order by end_date) as group_by_end_date 
     FROM Projects) 
GROUP BY group_by_end_date 
ORDER BY COUNT(1), MIN(startDate);


-- Pattern		| Pengertian
-- ----------------------------

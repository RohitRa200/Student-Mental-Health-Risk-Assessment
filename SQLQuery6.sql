/* Insight: Which stressor triggers Depression most for each Gender?
*/
SELECT 
    Gender,
    AVG(CASE WHEN Financial_Stress = 5 THEN CAST(Depression AS FLOAT) ELSE NULL END) * 100 as Risk_at_Max_Financial_Stress,
    AVG(CASE WHEN Academic_Pressure = 5 THEN CAST(Depression AS FLOAT) ELSE NULL END) * 100 as Risk_at_Max_Academic_Pressure
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Gender;
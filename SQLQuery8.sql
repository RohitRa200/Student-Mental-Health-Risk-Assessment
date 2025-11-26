/* Query 4: The "Hidden Factor" (Dietary Habits)
   Hypothesis: Unhealthy eating is a stronger predictor of depression than we think.
*/
SELECT 
    Dietary_Habits,
    COUNT(*) as Student_Count,
    -- Check their Stress Levels
    CAST(AVG(Academic_Pressure) AS DECIMAL(10,2)) as Avg_Academic_Pressure,
    
    -- Convert Text Sleep to Number to get an Average
    CAST(AVG(CASE 
        WHEN Sleep_Duration = 'Less than 5 hours' THEN 4.0  -- Represent as 4 hours
        WHEN Sleep_Duration = '5-6 hours' THEN 5.5          -- Midpoint
        WHEN Sleep_Duration = '7-8 hours' THEN 7.5          -- Midpoint
        WHEN Sleep_Duration = 'More than 8 hours' THEN 9.0  -- Represent as 9 hours
        ELSE NULL 
    END) AS DECIMAL(10,2)) as Avg_Sleep_Hours,

    -- Calculate Depression Rate
    CAST((SUM(CAST(Depression AS FLOAT)) / COUNT(*)) * 100 AS DECIMAL(10,2)) as Depression_Rate
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Dietary_Habits
ORDER BY Depression_Rate DESC;
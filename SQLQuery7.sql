SELECT 
    Dietary_Habits,
    AVG(Academic_Pressure) as Avg_Pressure, -- Are they stressed?
    AVG(Sleep_Duration_Numeric) as Avg_Sleep, -- Do they sleep? (Note: You might need to clean Sleep column first or use a CASE statement)
    (SUM(CAST(Depression AS FLOAT)) / COUNT(*)) * 100 as Depression_Rate
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Dietary_Habits
ORDER BY Depression_Rate DESC;
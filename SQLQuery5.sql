/* Insight: Does Family History amplify the danger of Academic Pressure?
*/
SELECT 
    Academic_Pressure,
    Family_History_of_Mental_Illness,
    COUNT(*) as Total_Students,
    SUM(CAST(Have_you_ever_had_suicidal_thoughts AS INT)) as Suicide_Risk_Count,
    -- Calculate Risk %
    (SUM(CAST(Have_you_ever_had_suicidal_thoughts AS FLOAT)) / COUNT(*)) * 100 as Suicide_Risk_Rate
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Academic_Pressure, Family_History_of_Mental_Illness
ORDER BY Academic_Pressure, Family_History_of_Mental_Illness;
--  Top 5 states for each crime type:

SELECT State_UT, 
	   SUM(Kidnapping) AS Total_Kidnapping,
       SUM(Murder) AS Total_Murder,
       SUM(RAPE) AS Total_Rape,
       SUM(Dacoity) AS Total_Dacoity,
       SUM(Burglary) AS Total_Burglary,
       SUM(Theft) AS Total_Theft,
       SUM(Robbery) AS Total_Robbery,
       SUM(Riots) AS Total_Riots,
       SUM(Dowery_Death) AS Total_Dowery_Death,
       SUM(Assault_on_Women) AS Total_Assault_on_Women,
       SUM(Import_girls) AS Total_Import_girls
FROM crimes
GROUP BY State_UT
ORDER BY Total_Kidnapping DESC
LIMIT 5; 

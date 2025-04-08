-- Total crimes by states from 2001 to 2013

SELECT State_UT,
	   SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls) AS Total_Crimes
FROM crimes
GROUP BY State_UT
ORDER BY Total_crimes DESC;
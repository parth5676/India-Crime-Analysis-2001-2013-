-- Total crimes pear year from 2001 to 2013

SELECT year,
	   SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls) AS Total_Crimes
FROM crimes
GROUP BY year
ORDER BY Total_crimes DESC;
-- Total crimes by districts

SELECT District,
       SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls) AS Total_Crimes
FROM crimes
GROUP BY District
ORDER BY Total_Crimes DESC;

-- Compare total crimes between two years:

SELECT State_UT,
	  SUM(CASE WHEN Year = 2001 THEN Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls ELSE 0 END) AS Crimes_2001,
      SUM(CASE WHEN Year = 2013 THEN Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls ELSE 0 END) AS Crimes_2013
FROM crimes
GROUP BY State_UT
order by Crimes_2013 DESC;
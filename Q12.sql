 -- Crime rate trend by year and crime type (pivot format):
 
 SELECT
    Year,
    SUM(Murder) AS Murder,
    SUM(RAPE) AS Rape,
    SUM(Kidnapping) AS Kidnapping,
    SUM(Dacoity) AS Dacoity,
    SUM(Burglary) AS Burglary,
    SUM(Theft) AS Theft,
    SUM(Robbery) AS Robbery,
    SUM(Riots) AS Riots,
    SUM(Dowery_Death) AS Dowery_Death,
    SUM(Assault_on_Women) AS Assault,
    SUM(Import_girls) AS Import_Girls
FROM crimes
GROUP BY Year
ORDER BY Year;
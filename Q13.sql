-- Year-wise % share of each crime type:

SELECT 
    Year,
    
    ROUND(SUM(Murder) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Murder_Pct,

    ROUND(SUM(RAPE) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Rape_Pct,

    ROUND(SUM(Kidnapping) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Kidnapping_Pct,

    ROUND(SUM(Dacoity) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Dacoity_Pct,

    ROUND(SUM(Burglary) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Burglary_Pct,

    ROUND(SUM(Theft) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Theft_Pct,

    ROUND(SUM(Robbery) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Robbery_Pct,

    ROUND(SUM(Riots) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Riots_Pct,

    ROUND(SUM(Dowery_Death) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Dowery_Death_Pct,

    ROUND(SUM(Assault_on_Women) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Assault_on_Women_Pct,

    ROUND(SUM(Import_girls) * 100.0 / SUM(
        Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + Dowery_Death + Assault_on_Women + Import_girls
    ), 2) AS Import_girls_Pct

FROM crimes
GROUP BY Year
ORDER BY Year;

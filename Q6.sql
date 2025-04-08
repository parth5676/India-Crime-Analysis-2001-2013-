-- Total of each crime type from 2001 to 2013

SELECT
    SUM(Murder) AS Total_Murder,
    SUM(RAPE) AS Total_Rape,
    SUM(Kidnapping) AS Total_Kidnapping,
    SUM(Dacoity) AS Total_Dacoity,
    SUM(Burglary) AS Total_Burglary,
    SUM(Theft) AS Total_Theft,
    SUM(Robbery) AS Total_Robbery,
    SUM(Riots) AS Total_Riots,
    SUM(Dowery_Death) AS Total_Dowery_Death,
    SUM(Assault_on_Women) AS Total_Assault,
    SUM(Import_girls) AS Total_Import_Girls
FROM crimes;


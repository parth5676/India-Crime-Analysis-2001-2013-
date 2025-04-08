-- Crime growth rate for each type:

SELECT 'Murder' AS Crime_Type,
       ROUND((MAX(Murder) - MIN(Murder)) / MIN(Murder) * 100, 2) AS Growth_Percent
FROM crimes
WHERE Murder > 0

UNION

SELECT 'RAPE',
       ROUND((MAX(RAPE) - MIN(RAPE)) / MIN(RAPE) * 100, 2)
FROM crimes
WHERE RAPE > 0

UNION

SELECT 'Kidnapping',
       ROUND((MAX(Kidnapping) - MIN(Kidnapping)) / MIN(Kidnapping) * 100, 2)
FROM crimes
WHERE Kidnapping > 0

UNION

SELECT 'Dacoity',
       ROUND((MAX(Dacoity) - MIN(Dacoity)) / MIN(Dacoity) * 100, 2)
FROM crimes
WHERE Dacoity > 0

UNION

SELECT 'Burglary',
       ROUND((MAX(Burglary) - MIN(Burglary)) / MIN(Burglary) * 100, 2)
FROM crimes
WHERE Burglary > 0

UNION

SELECT 'Theft',
       ROUND((MAX(Theft) - MIN(Theft)) / MIN(Theft) * 100, 2)
FROM crimes
WHERE Theft > 0

UNION

SELECT 'Robbery',
       ROUND((MAX(Robbery) - MIN(Robbery)) / MIN(Robbery) * 100, 2)
FROM crimes
WHERE Robbery > 0

UNION

SELECT 'Riots',
       ROUND((MAX(Riots) - MIN(Riots)) / MIN(Riots) * 100, 2)
FROM crimes
WHERE Riots > 0

UNION

SELECT 'Dowery_Death',
       ROUND((MAX(Dowery_Death) - MIN(Dowery_Death)) / MIN(Dowery_Death) * 100, 2)
FROM crimes
WHERE Dowery_Death > 0

UNION

SELECT 'Assault_on_Women',
       ROUND((MAX(Assault_on_Women) - MIN(Assault_on_Women)) / MIN(Assault_on_Women) * 100, 2)
FROM crimes
WHERE Assault_on_Women > 0

UNION

SELECT 'Import_girls',
       ROUND((MAX(Import_girls) - MIN(Import_girls)) / MIN(Import_girls) * 100, 2)
FROM crimes
WHERE Import_girls > 0;

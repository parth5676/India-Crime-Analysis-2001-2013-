-- District with highest rape cases

SELECT State_UT, District, Sum(Rape) as Total_rapes
FROM CRIMES
GROUP BY State_UT, District
ORDER BY Total_rapes DESC;
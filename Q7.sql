-- Year wise rape traind for specific state

SELECT Year, SUM(Rape) As Rape_Cases
FROM crimes
WHERE State_UT = 'Maharashtra'
GROUP By Year
Order By Rape_cases DESC;
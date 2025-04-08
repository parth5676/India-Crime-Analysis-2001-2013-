-- Multi-crime analysis: Top 5 states with high rape and kidnapping combined

SELECT State_UT,
      SUM(Murder + RAPE + Kidnapping) AS Total_Sensitive_Crime
FROM crimes
GROUP BY State_UT
ORDER BY Total_Sensitive_Crime DESC
LIMIT 5;
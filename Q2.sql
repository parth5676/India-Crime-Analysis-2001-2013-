-- data cleaning steps

-- 1. Check for Null and missing values

SELECT * FROM crimes WHERE 
    State_UT IS NULL OR District IS NULL OR Year IS NULL;

-- Ans. No null values

-- 2. Remove unwanted spaces

SET SQL_SAFE_UPDATES = 0;

UPDATE crimes
SET State_UT = TRIM(state_UT),
    District = TRIM(District);

SET SQL_SAFE_UPDATES = 1;

-- 3. Check for duplicate rowes

SELECT State_UT, District, Year, COUNT(*)
FROM crimes
GROUP BY State_UT, District, Year
HAVING COUNT(*) > 1;
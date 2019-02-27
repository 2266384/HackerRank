SELECT Name + '(' + LEFT(Occupation,1) + ')'
FROM Occupations
ORDER BY Name

SELECT 'There are a total of ' + STR(COUNT(Occupation)) + ' ' + LOWER(Occupation) + 's.'
FROM Occupations
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation;

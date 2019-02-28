/*
Returns the Average Population as an Integer - equates to the correct answer
however the given answer is a Float with 3 decimal places
*/

SELECT AVG(Population)
FROM City
WHERE District = 'California'

/*
Returns the Average Population as a Float with 3 decimal places to match the
correct answe
*/

SELECT CAST(AVG(CAST(Population AS Numeric (10,2))) AS Numeric (10,3))
FROM City
WHERE District = 'California';

SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (
    SELECT ROW_NUMBER() OVER (
        PARTITION BY Doctor, Professor, Singer, Actor
        ORDER BY Name) AS Rownum,
        CASE WHEN Doctor=1 THEN Name ELSE Null END AS Doctor,
        CASE WHEN Professor=1 THEN Name ELSE Null END AS Professor,
        CASE WHEN Singer=1 THEN Name ELSE Null END AS Singer,
        CASE WHEN Actor=1 THEN Name ELSE Null END AS Actor
    FROM Occupations
    
    PIVOT
        ( COUNT(Occupation)
        FOR Occupation IN(Doctor, Professor, Singer, Actor)) AS p
) temp

GROUP BY Rownum;

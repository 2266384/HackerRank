SELECT TOP 1 CAST(LONG_W AS DECIMAL (10,4))
FROM Station
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC;

/*
The brief lists the points incorrectly and should be as follows:
a = MIN LAT_N
b = MAX LAT_N
c = MIN LONG_W
d = MAX LONG_W
*/

SELECT CAST(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)) AS DECIMAL (10,4))
FROM STATION;

SELECT CONVERT(
                INT, CEILING(
                    AVG(Salary*1.00) - 
                    AVG(CONVERT(
                        FLOAT,REPLACE(
                            STR(Salary*1.00), '0', '')
                            )
                        )
                    )
                )
FROM Employees;

/* 
Shorter solution using CAST over CONVERT
*/
SELECT CEILING(
    AVG(CAST(Salary AS decimal)) - 
             AVG(CAST(REPLACE(Salary,'0','') AS decimal))
                )
FROM Employees;

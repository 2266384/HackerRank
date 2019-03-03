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

SELECT TOP 1 MAX(Salary * Months), COUNT(Name)
FROM Employee
GROUP BY (Salary * Months)
ORDER BY (Salary * Months) DESC;

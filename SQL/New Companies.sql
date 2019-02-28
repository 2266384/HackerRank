SELECT Company.company_code, Company.founder, ( 
    SELECT COUNT(DISTINCT lead_manager_code) 
    FROM Lead_Manager 
    WHERE Lead_Manager.company_code = Company.company_code ), (
        SELECT COUNT(DISTINCT senior_manager_code)
        FROM Senior_Manager
        WHERE Senior_Manager.company_code = Company.company_code), (
            SELECT COUNT(DISTINCT manager_code)
            FROM Manager
            WHERE Manager.company_code = Company.company_code), (
                SELECT COUNT(DISTINCT employee_code)
                FROM Employee
                WHERE Employee.company_code = Company.company_code)
FROM Company
ORDER BY Company.company_code;

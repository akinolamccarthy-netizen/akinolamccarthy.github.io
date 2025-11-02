-- 1. Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
select Empid,
      Fullname
from [dbo].[Employee details]
where managerid = 986;

-- 2. Write an SQL query to fetch the different projects available from the EmployeeSalary table.
select distinct project
from [dbo].[Employee Salary];

--- 3. Write an SQL query to fetch the count of employees working in project ‘P1’.
select COUNT(*) as 'Total_project_P1'
from [dbo].[Employee Salary]
where project = 'P1';

--- 4. Write an SQL query to find the maximum, minimum, and average salary of the employees. 
    SELECT 
    MAX(Salary) AS Max_Salary,
    MIN(Salary) AS Min_Salary,
    AVG(Salary) AS Avg_Salary
from [dbo].[Employee Salary];

--- 5. Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.
select Empid
from [dbo].[Employee Salary]
where salary between 9000 and 15000;

--- 6. Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
select *
from [dbo].[Employee details]
where city = 'Toronto' and ManagerId = 321;
        
---7. Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
select *
from [dbo].[Employee details]
where city = 'california' or ManagerId = 321

-- 8. Write an SQL query to fetch all those employees who work on Projects other than P1.
select empid
from [dbo].[Employee Salary]
where Project != 'P1'

-- 9. Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
 
    SELECT 
        EmpID,
        Salary,
        Variable,
        (Salary + Variable) AS Total_Salary
from [dbo].[Employee Salary]

--- 10. Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.
select *
from [dbo].[Employee details]
where fullname like '__hn%';

--- 11. Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
select Empid
from [dbo].[Employee details]
union
select Empid
from [dbo].[Employee Salary]

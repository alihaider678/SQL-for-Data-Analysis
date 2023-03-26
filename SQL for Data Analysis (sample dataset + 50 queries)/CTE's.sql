with CTE_Employee as
(select FirstName, LastName, Gender, Salary
, count(Gender) over (partition by Gender) as ToatalGender
, avg(Salary) over (partition by Gender) as AvgSalary
from sql_tutorials.employeedemographics emp 
join sql_tutorials.employeesalary sal 
on emp.EmployeeID = sal.EmployeeID
-- where Salary > '45000'
)
Select FirstName, AvgSalary from CTE_Employee;


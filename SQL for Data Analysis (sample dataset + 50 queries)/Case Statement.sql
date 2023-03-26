-- Case Statement

Select FirstName, LastName, Age,
case 
	when Age > 30 then 'old'
    when Age between 27 and 30 then 'young'
    else 'Baby'
end as 'Age category'
from employeedemographics
where Age is not null
order by Age;


select FirstName, LastName, JobTitle, Salary,
case
	when JobTitle = 'Salesman' then Salary + (Salary * .10)
    when JobTitle = 'Accountant' then Salary + (Salary * .05)
    when JobTitle = 'HR' then Salary + (Salary * .000001)
    else Salary + (Salary * .03)
end as SalaryAfterraise
from employeedemographics
join sql_tutorials.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

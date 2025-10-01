select* from employees_correct;

Count employees by gender and list the top 3 countries with the most employees;

select Gender,
Country,
count(*) as num_employees
from employees_correct
group by Gender, Country
order by num_employees desc
limit 3;

Calculate the average monthly salary per department;

select Department,
avg(Monthly_Salary) as avg_monthly_salary
from employees_correct 
group by Department
order by avg(Monthly_Salary);

List the top 10 highest-paid employees (by annual salary) and the average annual salary by country;

SELECT First_Name,
       Last_Name,
       Annual_Salary
FROM employees_correct
ORDER BY Annual_Salary DESC
limit 10;

select Country,
avg(Annual_Salary) as avg_annual_salary
from employees_correct
group by Country
order by avg_annual_salary;

Find employees with more than 10 years of service and calculate the average years of service per department;

SELECT First_Name,
       Last_Name,
       Years
FROM employees_correct
WHERE Years > 10;

Identify the employee with the maximum overtime hours and total overtime hours per center;

SELECT First_Name,
       Last_Name,
       Department,
       CAST(REPLACE(Overtime_Hours, ',', '.') AS DECIMAL(10,2)) AS Overtime_clean
FROM employees_correct
ORDER BY Overtime_clean DESC
LIMIT 1;

SELECT Department,
       SUM(CAST(REPLACE(Overtime_Hours, ',', '.') AS DECIMAL(10,2))) AS Total_Overtime
FROM employees_correct
GROUP BY Department
ORDER BY Total_Overtime DESC;

Create a summary table showing department, country, number of employees, average annual salary, and total overtime hours;

select Department,
Country,
count(*),
avg(Annual_Salary),
SUM(CAST(REPLACE(Overtime_Hours, ',', '.') AS DECIMAL(10,2))) AS Total_Overtime
from employees_correct 
group by Department, Country
order by avg(Annual_Salary) desc;




































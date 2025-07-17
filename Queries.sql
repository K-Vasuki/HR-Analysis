create database hr_analysis;
use hr_analysis;

select * from `hr-employee`;
show tables;

SELECT 
  ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS AttritionRate
FROM `hr-employee`;

SELECT Department,
       COUNT(*) AS TotalEmployees,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
       ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS AttritionRate
FROM `hr-employee`
GROUP BY Department;

SELECT JobRole,
       COUNT(*) AS TotalEmployees,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS left_employees,
       ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS AttritionRate
FROM `hr-employee`
GROUP BY JobRole
ORDER BY AttritionRate DESC;

select attrition,avg(MonthlyIncome) from `hr-employee` group by attrition ;

SELECT 
  CASE 
    WHEN  ï»¿Age< 30 THEN '20-29'
    WHEN ï»¿Age BETWEEN 30 AND 39 THEN '30-39'
    WHEN ï»¿Age BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+' 
  END AS AgeGroup,
  COUNT(*) AS Total,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left_employee,
  ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS AttritionRate
FROM `hr-employee`
GROUP BY AgeGroup;

SELECT 
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
  SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS Employees_here,
  ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS AttritionRate
FROM `hr-employee`;

SELECT 
  JobRole,
  COUNT(*) AS Total,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left_employee,
  SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS crnt_employee
FROM `hr-employee`
GROUP BY JobRole;

select department,Count(*) as Employee_count from `hr-employee`group by department;

select Department,count(*) as employees_count,sum(case when gender="Female" then 1 else 0 end) As Female_employees,
sum(case when gender="male" then 1 else 0 end) As Male_employees
from `hr-employee` 
group by Department;


CREATE TABLE matching_result (
    college_code VARCHAR(10),
    student_name VARCHAR(100),
    student_branch VARCHAR(100),
    univ_reg_no VARCHAR(20)
);

select count(*) as total_employee from `hr-employee`;

select count(*) from `hr-employee` where attrition="yes";

select count(*) from `hr-employee` where attrition="No";

select department,count(*) as attrition from `hr-employee` where attrition="yes" group by department;

select department,count(*) as attrition from `hr-employee` where attrition="No" group by department;

select avg(ï»¿Age) attrited_avg_age from `hr-employee` where attrition="yes";
select gender,overtime,count(*) from `hr-employee` where attrition="yes" group by gender,overtime;


select * from `hr-employee`;

select case when ï»¿Age<30 then "below 30" when ï»¿Age between 30 and 40 then "30-40" else "Above 40" end as age_group ,count(*) as attrition_count 
from `hr-employee` where attrition="yes" group by age_group;

select jobrole,count(*) as attrition_rate from `hr-employee` where attrition="yes" group by jobrole;

select jobrole,count(*) as attrition_rate from `hr-employee` where attrition="no" group by jobrole;

select BusinessTravel,count(*) as attrition_rate from `hr-employee` where attrition="yes" group by businessTravel;

select maritalstatus,count(*) as attrition
from `hr-employee`where attrition="yes" group by maritalstatus;

select department,avg(monthlyIncome) from `hr-employee` where attrition="yes" group by department;


SELECT 
    EducationField,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS attrition_rate
FROM `hr-employee`
GROUP BY EducationField;

select yearsatcompany,count(*) as attrition_count from `hr-employee` where attrition="yes" group by yearsatcompany order by yearsatcompany;
select performancerating,count(*) from `hr-employee` where attrition="yes" group by performancerating;

select worklifebalance,count(*) as attrition from `hr-employee`where attrition="yes" group by worklifebalance order by worklifebalance;

SELECT JobRole, ROUND(AVG(MonthlyIncome), 2) AS avg_income
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY avg_income DESC
LIMIT 5;

select jobrole,avg(monthlyincome) from `hr-employee` where attrition="yes" group by jobrole  order by monthlyincome desc limit 5;

select department,overtime,count(*) as attrition from `hr-employee` where attrition="yes" group by department,overtime;

select case when ï»¿Age<30 then "below 30" when ï»¿Age between 30 and 40 then "30-40" else "above 40" 
end as age_group ,count(attrition) from `hr-employee` where attrition="yes" group by age_group ;

select gender,count(*) as attrition from `hr-employee` where attrition="yes" group by gender;
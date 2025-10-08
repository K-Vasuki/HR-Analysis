use hr_analysis;

select * from `hr-employee`;

select count(*) from `hr-employee`;

SELECT 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrited_Employees,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`;


SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrited_Employees,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`
GROUP BY Department
ORDER BY Attrition_Rate DESC;


SELECT 
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrited_Employees,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;

SELECT 
    JobRole,
    ROUND(AVG(MonthlyIncome), 2) AS Avg_Monthly_Income
FROM `hr-employee`
GROUP BY JobRole
ORDER BY Avg_Monthly_Income DESC;


SELECT 
    CASE 
        WHEN ï»¿Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN ï»¿Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN ï»¿Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN ï»¿Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS Age_Group,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrited,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`
GROUP BY Age_Group
ORDER BY Attrition_Rate DESC;


SELECT 
    YearsAtCompany,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrited_Employees,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;


SELECT 
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrited_Employees,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`
GROUP BY OverTime;


SELECT 
    MaritalStatus,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrited_Employees,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`
GROUP BY MaritalStatus;


SELECT 
    BusinessTravel,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrited_Employees,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS Attrition_Rate
FROM `hr-employee`
GROUP BY BusinessTravel
ORDER BY Attrition_Rate DESC;



SELECT 
    OverTime,
    JobSatisfaction,
    WorkLifeBalance,
    ROUND(AVG(MonthlyIncome), 0) AS AvgIncome,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS AttritionRate
FROM `hr-employee`
GROUP BY OverTime, JobSatisfaction, WorkLifeBalance
ORDER BY AttritionRate DESC
LIMIT 5;




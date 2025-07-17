 HR Attrition Analysis

An end-to-end data analysis project using **Power BI**, **SQL**, and **Python** to explore and visualize employee attrition trends from the IBM HR Analytics dataset.

---

Project Objective

To identify patterns and key drivers of employee attrition using historical HR data, enabling data-driven decisions to improve retention strategies.

---

Tools & Technologies

- **SQL** – Data querying, grouping, filtering
- **Power BI** – Dashboards, KPIs, slicers, and visuals
- **Python (Pandas, Matplotlib)** – Exploratory Data Analysis (EDA)
- **DAX** – Measures for calculated fields in Power BI

---

Key Business Questions

- Which departments and job roles have the highest attrition?
- Is OverTime associated with employee attrition?
- How does attrition vary by age, gender, and income?
- Which employee segments are at the highest risk of leaving?

---

##  Dataset

- **Source**: IBM HR Analytics Employee Attrition Dataset  
- **Records**: 1,470 employees  
- **Attributes**: Age, Job Role, Department, Gender, Monthly Income, OverTime, Attrition, and more

---

## Power BI Dashboard Highlights

- **KPI Cards**: Total Employees, Attrition Count, Avg Monthly Income
- **Bar Charts**: Attrition by Department, Age Group, and Job Role
- **Pie Chart**: OverTime vs Attrition
- **Clustered Charts**: Gender-wise Attrition
- **Slicers**: Filter by Gender, Age Group, Salary Band, and Department

---

##  Sample SQL Queries

```sql
-- Total Attrition
SELECT COUNT(*) FROM HR_Employee WHERE Attrition = 'Yes';

-- Attrition by Department
SELECT Department, COUNT(*) AS Count
FROM HR_Employee
WHERE Attrition = 'Yes'
GROUP BY Department;

-- Average Monthly Income of Attrited Employees
SELECT AVG(MonthlyIncome)
FROM HR_Employee
WHERE Attrition = 'Yes';

Python EDA Insights
Created correlation plots to identify key influencing features

Analyzed distribution of MonthlyIncome and Age for attrited employees

Found significant links between OverTime and Attrition

Key Insights
Majority attrition occurs among employees aged <40

R&D and Sales departments have the highest turnover

OverTime is highly correlated with attrition (46% attrited worked overtime)

Women showed a slightly higher attrition rate than men

Entry-level roles (Sales Executive, Lab Technician) had the most exits

Recommendations
Focus retention efforts on <40 age group and junior roles

Reduce OverTime workload in high-risk departments

Improve engagement and growth plans for women

Offer career development paths in Sales and R&D

Files Included
PowerBI_Dashboard.pbix – Power BI report file

Queries.sql – SQL scripts used for analysis

Python_Analysis.ipynb – Jupyter Notebook for EDA

HR_Attrition_Insights_Report.pdf – Summary report

README.md – This documentation

Contact
VASUKI K
Engineering Graduate 2025-IT
LinkedIn:https://www.linkedin.com/in/vasukik/ •Github:https://github.com/K-Vasuki• Email: vasukikumaraguru11@gmail.com



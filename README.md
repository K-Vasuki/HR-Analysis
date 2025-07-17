# 💼 HR Attrition Analysis

An end-to-end data analysis project using **Power BI**, **SQL**, and **Python** to explore and visualize employee attrition trends from the IBM HR Analytics dataset.

---

## 📌 Project Objective

To identify patterns and key drivers of employee attrition using historical HR data, enabling data-driven decisions to improve retention strategies.

---

## 🧰 Tools & Technologies

- **SQL** – Data querying, grouping, filtering
- **Power BI** – Dashboards, KPIs, slicers, and visuals
- **Python (Pandas, Matplotlib)** – Exploratory Data Analysis (EDA)
- **DAX** – Measures for calculated fields in Power BI

---

## ❓ Key Business Questions

- Which departments and job roles have the highest attrition?
- Is OverTime associated with employee attrition?
- How does attrition vary by age, gender, and income?
- Which employee segments are at the highest risk of leaving?

---

## 🗂️ Dataset

- **Source**: IBM HR Analytics Employee Attrition Dataset  
- **Records**: 1,470 employees  
- **Attributes**: Age, Job Role, Department, Gender, Monthly Income, OverTime, Attrition, and more

---

## 📊 Power BI Dashboard Highlights

- **KPI Cards**: Total Employees, Attrition Count, Avg Monthly Income
- **Bar Charts**: Attrition by Department, Age Group, and Job Role
- **Pie Chart**: OverTime vs Attrition
- **Clustered Charts**: Gender-wise Attrition
- **Slicers**: Filter by Gender, Age Group, Salary Band, and Department

---

## 🧮 Sample SQL Queries

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

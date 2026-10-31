# Exploratory Data Analysis with SQL: Jon Market Analysis

![Alt Text](../Images/project_image_1.png)
A SQL Project to analyze Data Engineer Jobs using real world Job postings. It shows my abilit to write **Production-level analytical SQL, design efficient queries and turn business questions into real data driven insights**

## Execution Summary
- ✅ **Project Scope:** Bult 3 Analytical queries to answer some important questions about Data Engineer job market  
- ✅ **Data Modeling:** Used multi-table Joins across facts and dimensions to make key insights.  
- ✅ **Analytics:** Applied aggregations, filtering and sorting to sort the jobs by salary, demand and overall value  
- ✅ **Outcome:** Delivered actionable insights and answers on SQL/Python dominance, Cloud trends, salary patterns and most valued skills  

Review these codes:  
[Top Demanded Skills](/1_EDA/01_top_demanded_skills.sql) - Demand analysis with multi-table Joins   
[Top Paying Skills](/1_EDA/02_top_paying_skills.sql) - Salary analysis with aggregations    
[Most Optimal skills](/1_EDA/03_optimal_skills.sql) - Derived optimal skills from combined salary/demand optimization

## Problems & Context
The Question for Job markert analysts were:
- 🎯**Most in-demand skills:** What are the most in-demand skills for Data Engineers?  
- 💰**Highest Salaries:** Which skills are paid the highest skills?  
- ⚖️**Trade-offs:** What are the most optimal skills balancing both demand and salary?  
This project analyzes a **data wharehouse** built using star schema design. The wharehouse structure consists of  

![Data Wharehouse](../Images/project_image_2.png)

## Tech Stack
- 🐤 **Query Engine:** DuckDB for fast OLAP-style analytical queries  
- 🧮 **Language:** SQL  
- 📊 **Data Model:** Star schema with fact + dimension + bridge tables  
- 🛠️ **Development:** VS Code for SQL editing & Terminal for duckdb CLI  
- 📦 **Version Control:**  Git/Github for versioned SQL scripts  

## Repository Structure
1_EDA/  
├── 01_top_demanded_skills.sql     # Demand analysis query  
├── 02_top_paying_skills.sql       # Salary analysis query   
├── 03_optimal_skills.sql        #Combined demand/salary optimization  
└── README.md                      # You are here

## Aalysis Overview
### Key Insights
- 🧠 **Core language:** SQL and Python both appear in more than 28000 job posts, making them most demanded skills  
- ☁️ **Cloud Platforms:** AWS and Azure are critical for modern data engineering roles  
- 🧱 **Infrastructure & Tools:** Kubernetes, Docker and Terraform are associated with premium salaries  
- 🧱 **Big data tools:** Apache spark shows strong demand with competitive compensation

## SQL Skills Demonstrated
### Query Design & Optimization
- **Complex Joins:** Multi-table INNER JOIN operations across job_postings_fact, skills_job_dim, and skills_dim  
- **Aggregations:** COUNT(), MEDIAN(), ROUND() for statistical analysis  
- **Filtering:** Boolean logic with WHERE clauses and multiple conditions (job_title_short, job_work_from_home, salary_year_avg IS NOT NULL)  
- **Sorting & Limitinh:** ORDER BY with DESC and LIMIT for top-N analysis 

### Data Analysis Techniques
- **Grouping:** GROUP BY for categorical analysis by skill
- **Mathematical Functions:** LN() for natural logarithm transformation to normalize demand metrics  
- **Calculated Metrics:** Derived optimal score combining log-transformed demand with median salary  
- **HAVING Clause:** Filtering aggregated results (skills with >= 100 postings)  
- **NULL Handling:** Proper filtering of incomplete records (salary_year_avg IS NOT NULL)





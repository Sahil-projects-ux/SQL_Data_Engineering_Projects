/*
The objective of the this project to find which skills are in most demand for people who want 
to be data engineer. 
The Questions to be asked are:
- What are most in demand skills for data engineers?
- What types of skills are demanded more than others?
- How much does it translate to data engineer jobs that supports remote work?
*/

SELECT 
  sd.skills,
  COUNT(jpf.*) AS demand_count
FROM 
  job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd
ON jpf.job_id = sjd.job_id

INNER JOIN skills_dim AS sd
ON sjd.skill_id = sd.skill_id
WHERE
  jpf.job_title_short = 'Data Engineer'
  AND jpf.job_work_from_home = TRUE
GROUP BY
 sd.skills
ORDER BY
  demand_count DESC 
LIMIT 10;

/*  
 Here is a breakdown of most demanded skills for data engineers. SQl and python continue to 
 be the most demanded skills for data engineers. Cloud platforms liks aws and azure are in close
 second which show the rising importance of ability to use cloud platforms to do your job 
 for modern data engineers.
 Big data tools like spark are still in high demand.
 The demand of proficiency in data pipeline tools like like airflow, snowflake, databricks seems to be 
 steadily increasing which indicates that demand for such skills may increase more in future
 which implies new data engineers can learn these skills.
 Secondary programming like Java have lesser demand than the main languages like python and SQL.

 KEY Takeaways:
 1. Python and SQL are most in demand skills.
 2. Cloud Platforms (AWS, Azure) are critical for modern data engineering.
 3. Big data tools like spark continue to be in high demand.
 4. Data pipeline tools (Airflow, Snowflake, Databrick) show rise in demand. 



┌────────────┬──────────────┐
│   skills   │ demand_count │
│  varchar   │    int64     │
├────────────┼──────────────┤
│ sql        │        29221 │
│ python     │        28776 │
│ aws        │        17823 │
│ azure      │        14143 │
│ spark      │        12799 │
│ airflow    │         9996 │
│ snowflake  │         8639 │
│ databricks │         8183 │
│ java       │         7267 │
│ gcp        │         6446 │
└────────────┴──────────────┘
*/
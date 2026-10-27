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
 Here is a breakdown of most demanded skills for data engineers. SQL and Python continue to be the most demanded
 skills with cloud cloud platforrms like AWS and Azure coming close. Tools like spark and airflow are also in high demand.
 Data platforms like snowflake and databricks are moderately demanded while secondary programming language like Java are in 
 relatively less demand.

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
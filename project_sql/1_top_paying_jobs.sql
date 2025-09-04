/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/


SELECT 
    job_id,
    name as company_name,
    job_title_short,
    salary_year_avg,
    job_location
FROM 
    job_postings_fact
    LEFT JOIN company_dim USING (company_id)
WHERE 
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND 
    salary_year_avg IS NOT NULL --change filters according to your needs
ORDER BY
    salary_year_avg DESC
LIMIT 10;


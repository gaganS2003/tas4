-- ============================
--   TASK 4 : AGGREGATE & GROUP BY
-- ============================

-- 1. COUNT total employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. AVG salary
SELECT AVG(salary) AS avg_salary
FROM employees;

-- 3. SUM of all salaries
SELECT SUM(salary) AS total_salary
FROM employees;

-- 4. Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 5. Count employees per department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 6. GROUP BY with HAVING (filter departments)
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- 7. Maximum salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 8. Count distinct job titles
SELECT COUNT(DISTINCT job_title) AS unique_job_roles
FROM employees;

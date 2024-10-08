--QUESTIONS

--1. Average years at company by attrition
select Attrition,
AVG(Years_At_Company) as Avg_Years_At_Company
from [HR Analytics]
group by Attrition
 -- NB: 0= NO
  --    1= YES

--2. Average Performance Ratings of employees who left vs. stayed
select Attrition,
avg(Performance_Rating) as Avg_Performance_Rating
from [HR Analytics]
group by Attrition

--3. Employee count by job role and department
select Department, Job_Role,
count(*) as Employee_Count
from [HR Analytics]
group by Department, Job_Role
order by Department, Job_Role

--4. Job roles with highest Attrition
select Job_Role, count(*) as Attrition_Count from [HR Analytics]
where Attrition = 1
group by Job_Role
order by Attrition_Count desc

--5. Department with Highest Attrition
select Department, count(*) as Attrition_Count from [HR Analytics]
where Attrition = 1 
group by Department 
order by Attrition_Count desc

--6. Attrition by Gender
select Gender, count(*) as Attrition_Count
from [HR Analytics]
where Attrition = 1 
group by Gender

--7. Employees with over 10 years in the same role
select Employee_Number, Job_Role, Department, Years_In_Current_Role
from [HR Analytics]
where Years_In_Current_Role > 10

--8. Average Environment Satisfaction by Job Role
select Job_Role,
avg(Environment_Satisfaction) as Avg_Environment_Satisfaction
from [HR Analytics]
group by Job_Role
order by Avg_Environment_Satisfaction

--9. Relationship between Job Involvement and Job Satisfaction
select Job_Involvement,
avg(Job_Satisfaction) as Avg_Job_Satisfaction
from [HR Analytics]
group by Job_Involvement
order by Job_Involvement

--10. Avearge Years at company by Job Role
select Job_Role, avg(Years_At_Company) as Avg_Years_At_Company
from [HR Analytics]
group by Job_Role


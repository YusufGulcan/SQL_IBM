-- An overview to the departments and job roles-- 

select Department,  JobRole, count(Department) as "Number of employees"
from ibm
group by Department, JobRole
order by department;


--Gender distribution on departments and job roles--

select Department, Gender,  count(Department) as "Number of employees"
from ibm
group by Gender, Department
order by  department;


-- An overview with aggregate numbers on earning-- 

select Department, JobRole, avg(MonthlyIncome), max(MonthlyIncome) , (max(MonthlyIncome)-avg(MonthlyIncome)) as Difference
from ibm
group by Department, JobRole
order by Department desc;


-- Age, Experience and Income Analysis -- 


select Avg(Age) as 'Average Age', Avg(JobSatisfaction) as 'Average Satisfaction',avg(MonthlyIncome) as 'Monthly Income',
case  
when age < 30 then 'Young'
when age < 40 then 'Proffessional'
when age < 50 then 'Senior'
else 'Expert'
end as 'Experience'
from ibm
group by experience;

-- Gender, Age and Income--
select Gender, Avg(age),Avg(MonthlyIncome),Avg(JobSatisfaction)
from ibm
group by Gender
;



----- Marital Status and Job Role -- 
select JobRole, MaritalStatus, count(JobRole) as 'Number of Employees'
from ibm 
group by MaritalStatus, JobRole
order by JobRole;

-- How many of employees work in their education field ?--

select Department, EducationField, count(Department) from ibm
group by EducationField, Department
order by EducationField;

-- Business travel , age, gender, relationship---

select BusinessTravel, gender,  avg(age), count(gender) as 'Number of Employees'
from ibm
group by BusinessTravel , gender
order by BusinessTravel;

-- Business Travel, and Job Role - -
select BusinessTravel, JobRole, avg(age), count(gender) as 'Number of Employees'
from ibm
group by BusinessTravel , JobRole
order by BusinessTravel
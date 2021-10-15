-- Deliverable 1 for Module 7 Challenge
-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
Select emp_no, first_name, last_name from employees;

-- Retrieve the title, from_date, and to_date columns from the Titles table.
Select title, from_date, to_date from titles;

-- Create a new table using the INTO clause. Join both tables on the primary key.
Select emp.emp_no, emp.first_name, emp.last_name, 
       titles.title, titles.from_date, titles.to_date
Into retirement_titles
from employees emp
inner join titles as titles 
on (emp.emp_no = titles.emp_no)
where emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by emp.emp_no;

select * from retirement_titles;

-- Get unique records with most recent title of the employee
-- Use Dictinct with Orderby to remove duplicate rows
select distinct on (emp_no) emp_no, first_name, last_name, title
into unique_titles
from retirement_titles
order by emp_no, to_date desc;

-- Get count of retiring employees based on the latest titles
select count(emp_no), title
into retiring_titles
from unique_titles
group by title
order by 1 desc;

select * from retiring_titles;

-- Deliverable 2 for Module 7 Challenge
-- Retrieve the emp_no, first_name, last_name AND birth_date columns from the Employees table.
Select emp_no, first_name, last_name, birth_date from employees;

-- Retrieve the from_date and to_date columns from the Department Employee table.
Select from_date, to_date from dept_emp;

-- Retrieve the title column from the Titles table.
Select title from Titles;

--Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each 
-- set of rows defined by the ON () clause.
Select distinct on (emp.emp_no) emp.emp_no, emp.first_name, emp.last_name, emp.birth_date,
	   de.from_Date, de.to_date,
	   titles.title
into mentorship_eligibilty
from employees as emp
inner join dept_emp as de
on (emp.emp_no = de.emp_no)
inner join Titles as titles
on (emp.emp_no = titles.emp_no)
where emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
and de.to_date = '9999-01-01'  -- current employees would have some valid date
order by emp.emp_no;

select * from mentorship_eligibilty;

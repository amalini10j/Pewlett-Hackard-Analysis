# Pewlett_Hackard_Analysis
Repository for Pewlett Hackard analysis for preparing for the retirement in high numbers due to happen very soon which has been termed as the "Silver Tsunami" owing to the unprecedented number of retirees

## Overview of "Silver Tsunami" Analysis

Pewlett Hackard needs to do employee data analysis to understand how many people are due to retire in the near future and how many job openings will be created due to this. This will help in future planning to keep a balance in the company's workforce. The first major task is to create an employee database to store the required data and then generate important  metrics that will aid in such the analysis:

- Number of employees due to retire
- Number of employees that will be receiving the retirement package
- A breakdown of employees retiring per department
- A breakdown of employees retiring in different positions

## Resources
**Data Source:** csv files for employee and departments and its details
**Software:** Postgres DB server and pgadmin 4, Visual Studio Code 1.59

## Employee Data Analysis Results

**Which titles or positions would have the highest number of people retiring and what should be the focus area for future recruitment for Pewlett Hackard?**

The counts of people retiring based on the titles is as follows:
![Count of Titles](/Images/CountOfRetiringTitles.png)

The focus should be more on hiring engineers and staff at both junior and senior levels. The least number of people retiring belong to the manager group.

**How many employees are eligible for a mentorship program?**

A snapshot of the dataset for employees eligible for mentorship program are as follows:
![WeeklyTotals](/Images/MentorshipEligibility.png)

A count from the above dataset would help in planning ahead for the mentorship program.

## Employee Data Analysis Summary

**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**
A total of roles to be filled can be found from unique_titles.csv dataset by using the following query:
select count(emp_no) from unique_titles;

The above query gives a count of 90398 roles!

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
The following query gives a count of total number of employees who are eligible to mentor the next generation employees:
select count(*) from mentorship_eligibilty;

The above query gives a count of 1549 which is definitely not enough to mentor 90,000 plus people who need to be recruited. Hence the future recruitment must be planned well ahead in time and in staggered groups so that there is enough bandwidth to mentor the incoming employees. 




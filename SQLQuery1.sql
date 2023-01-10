select *
from New_PortfolioProject..[happyscore_income$]
order by avg_income

--Selecting, Country, Income, Inequality, and Regions
select country, region, avg_income, median_income, income_inequality, (income_inequality/avg_income)*100 as Inequality_Index
from New_PortfolioProject..[happyscore_income$]
where region like '%Western Europe%'
order by Inequality_Index

--Selecting, Country, Satisfaction, Inequality, and Regions
select country, region, avg_satisfaction, std_satisfaction, income_inequality, (avg_satisfaction/income_inequality)*100 as Satisfaction_Index
from New_PortfolioProject..[happyscore_income$]
where region like '%Sub-Saharan Africa%'
order by income_inequality



--Selecting, Country, Happiness, Inequality, and Regions
select country, region, happyScore, income_inequality, avg_satisfaction
from New_PortfolioProject..[happyscore_income$]
where avg_satisfaction>7
order by happyScore

select *
from New_PortfolioProject..[happyscore_income$]
order by region
SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject..[Covid deaths ]
order by 1,2

-- Looking at Total Cases vs Total Deaths 
-- Shows likelihood of dying if you contract covid in your country

SELECT Location, 
       date, 
       total_cases, 
       total_deaths, 
       CAST(total_deaths AS float) / CAST(total_cases AS float) * 100 AS DeathPercent
FROM PortfolioProject..[Covid deaths]
WHERE Location like '%kingdom%'
ORDER BY 1, 2;

-- Looking at total cases vs population

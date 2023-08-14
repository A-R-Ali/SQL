SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject..[Covid deaths ]
WHERE continent is not null
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

SELECT Location, 
       date, 
       total_cases, 
       population, 
       CAST(total_cases AS float) / CAST(population AS float) * 100 AS DeathPercent
FROM PortfolioProject..[Covid deaths]
WHERE Location like '%kingdom%'
ORDER BY 1, 2;

--Looking at Countries with Highest Infection Rate compared to Population
SELECT Location, 
       MAX(total_cases) as HighestInfection, 
       population, 
       CAST(MAX(total_deaths) AS float) / CAST(population AS float) * 100 AS PopulationInfectedPercent
FROM PortfolioProject..[Covid deaths]
--WHERE Location LIKE '%Kingdom%'  -- Replace with the correct country names or patterns
GROUP BY Location, population
ORDER BY HighestInfection DESC;


-- Countries with Highest Death Count
SELECT Location, 
	   MAX(cast(total_deaths as int)) as HighestDeaths
FROM PortfolioProject..[Covid deaths]
--WHERE Location LIKE '%Kingdom%'  -- Replace with the correct country names or patterns
WHERE continent is not null
GROUP BY Location
ORDER BY HighestDeaths DESC;

-- Continent with Highest Death Count
SELECT Location,
MAX(cast(total_deaths as int)) as HighestDeaths
FROM PortfolioProject..[Covid deaths ]
WHERE continent is null AND Location NOT LIKE '%income%'
GROUP BY Location
ORDER BY HighestDeaths DESC;

-- Global Numbers
SELECT date, 
SUM(new_cases),
SUM(cast(new_deaths as int)),
SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
FROM PortfolioProject..[Covid deaths]
WHERE continent is not null
GROUP BY date
ORDER BY 1, 2;

SELECT date, 
SUM(new_cases) as TotalNewCases,
SUM(cast(new_deaths as int)) as TotalNewDeaths,
(SUM(cast(new_deaths as int)) / NULLIF(SUM(new_cases), 0)) * 100 as DeathPercentage
FROM PortfolioProject..[Covid deaths]
WHERE continent is not null
GROUP BY date
ORDER BY 1,2 ASC

SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
FROM PortfolioProject..[Covid deaths ] dea
JOIN PortfolioProject..[Covid Vaccinations] vac
	ON dea.location = vac.location
	AND dea.date = vac.date;



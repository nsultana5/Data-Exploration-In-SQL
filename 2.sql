--SELECT * 
--FROM PortfolioProject.dbo.coviddeaths

--SELECT * 
--FROM PortfolioProject.dbo.Vaccinations

--SELECT location, date, total_cases, new_cases, total_deaths, population
--FROM PortfolioProject.dbo.coviddeaths 
--ORDER BY 1,2

--Finding number of TOTAL CASES and TOTAL DEATHS countrywise.
--SELECT location, count(total_cases) AS T_CASES,COUNT(total_deaths) AS T_DEATHS
--FROM PortfolioProject.dbo.coviddeaths 
--GROUP BY location
--ORDER BY location

--SELECT location, SUM(cast (TOTAL_CASES as int)), SUM(TOTAL_DEATHS as int)
--FROM PortfolioProject.dbo.coviddeaths
--Group by location

--ALTER TABLE coviddeaths ADD totaldeaths int
--UPDATE coviddeaths SET totaldeaths = CAST(total_deaths AS int)

--select totaldeaths,totalcases from CovidDeaths

--Select location, date, totalcases, totaldeaths, (totaldeaths/totalcases) as deathpercentage
--From PortfolioProject.dbo.coviddeaths
--order by 1, 2

--SELECT location, count( cast(totalcases as bigint)) AS T_Cases, count( cast(totaldeaths as bigint)) AS T_Deaths
--from CovidDeaths
--WHERE date like '%2023%'
--group by location
--order by location

--SELECT location,date ,totaldeaths, totalcases, (cast(totaldeaths as float)/cast(totalcases as float))*100 AS Deathpercentage
--FROM CovidDeaths
--WHERE location ='India'
--order by location, date 

--Looking at Total Cases VS Population
--SELECT location,date, totalcases, Population, (cast(totalcases as float)/cast(population as float))*100 AS Affect_percentage
--from CovidDeaths
--WHERE location ='India'
--order by location, date

--DELETE FROM PortfolioProject.dbo.CovidDeaths WHERE LOCATION IN ( 'High income','World','Upper middle income','Low income')
--DELETE FROM PortfolioProject.dbo.CovidDeaths WHERE continent is null

--contries with highest infection rate compared to population
--SELECT location, Population,MAX(totalcases) AS HighestInfectionRate, MAX(cast(totalcases as float)/cast(population as float))*100 AS Infection_percentage
--from PortfolioProject.dbo.CovidDeaths
--Group by location,population
--order by 4 desc

--Showing countries with highest death counts w.r.t population
--SELECT location, Population,MAX(totaldeaths) AS HighestDeathRate, MAX(cast(totaldeaths as float)/cast(population as float))*100 AS Death_percentage
--from PortfolioProject.dbo.CovidDeaths
--Group by location,population
--order by 4 desc

----Countrywise deathcounts(Highest death counts)
SELECT location,max(totaldeaths) AS DeathCount
from PortfolioProject.dbo.CovidDeaths
Group by location
order by 2 desc

---BREAKING/QUERYING --CONTINENT WISE ---
SELECT continent, MAX(totaldeaths)  FROM PortfolioProject.dbo.CovidDeaths
GROUP BY continent
ORDER BY 2 DESC














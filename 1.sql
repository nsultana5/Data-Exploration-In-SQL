--Finding the total number of cases and deaths as per country.
--SELECT location, sum( cast(totalcases as bigint)) AS T_Cases, sum( cast(totaldeaths as bigint)) AS T_Deaths
--from CovidDeaths
--group by location 
--order by location

--Shows likelihood of dying if you contract covid 
--SELECT location,date , totalcases, totaldeaths, (cast(totaldeaths as float)/cast(totalcases as float))*100 AS Deathpercentage
--FROM CovidDeaths
--order by location, date 

--Shows likelihood of dying if you contract covid in india 
--SELECT location,date ,totaldeaths, totalcases, (cast(totaldeaths as float)/cast(totalcases as float))*100 AS Deathpercentage
--FROM CovidDeaths
--WHERE location ='India'
--order by location, date

--IMP--(COUNTRY WISE)

--contries with HIGHEST INFECTION RATES compared to population
--SELECT location, Population,MAX(totalcases) AS HighestInfectionRate, MAX(cast(totalcases as float)/cast(population as float))*100 AS Infection_percentage
--from PortfolioProject.dbo.CovidDeaths
--Group by location,population
--order by 4 desc

--Showing countries with HIGHEST DEATH COUNT w.r.t population
--SELECT location, Population,MAX(totaldeaths) AS HighestDeathRate, MAX(cast(totaldeaths as float)/cast(population as float))*100 AS Death_percentage
--from PortfolioProject.dbo.CovidDeaths
--Group by location,population
--order by 4 desc

--Countrywise DEATHCOUNTS...(Highest death counts)
--SELECT location,max(totaldeaths) AS DeathCount
--from PortfolioProject.dbo.CovidDeaths
--Group by location
--order by 2 desc

---BREAKING/QUERYING --CONTINENT WISE ---




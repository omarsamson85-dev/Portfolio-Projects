/*
============================================================
COVID-19 DATA ANALYSIS
============================================================
Purpose:
Exploratory analysis of COVID-19 cases, deaths, population,
and vaccination data using SQL Server.

Datasets:
- CovidDeaths
- CovidVaccination

Techniques demonstrated:
- Data exploration
- Aggregations
- GROUP BY
- JOINs
- Window functions
- CTEs
- Temporary tables
- Views
- Calculated metrics
============================================================
*/

select *
from PotfolioProjects.dbo.CovidDeaths
where continent is not null
order by location, date

--select *
--from [POTFOLIO PROJECTS].dbo.CovidVaccination
--order by 3,4

  -- ============================================================
-- 1. DATA EXPLORATION
-- ============================================================
--selecting Data use

select location,date,total_cases,new_cases,total_deaths,population
from PotfolioProjects..CovidDeaths
order by 1,2

 -- ============================================================
-- 2. TOTAL CASES VS TOTAL DEATHS
-- ============================================================
-- Shows the likelihood of dying if infected with COVID-19
-- in a selected country. 

select location,date,total_cases,total_deaths,
  (total_deaths / NULLIF(total_cases, 0)) * 100.0 as DeathPercentage
from PotfolioProjects..CovidDeaths
where location like '%kenya%'
order by location, date

-- ============================================================
-- 3. TOTAL CASES VS POPULATION
-- ============================================================
-- Calculates the percentage of the population infected.

select location,date,total_cases,population,(total_cases / NULLIF(population, 0)) * 100.0 as PopulationInfectedPercentage
from PotfolioProjects..CovidDeaths
where continent is not null
-- ============================================================
-- 4. COUNTRIES WITH HIGHEST INFECTION RATES
-- ============================================================
-- Identifies countries with the highest recorded infection
-- rates relative to population.

select location,population,MAX(total_cases) as HighestInfectionCount,
  MAX(total_cases) / NULLIF(population, 0) * 100.0 as PercentPopulationInfected
from PotfolioProjects..CovidDeaths
where continent is not null
group by location, population
order by PercentPopulationInfected desc


-- ============================================================
-- 5. COVID-19 DEATHS BY CONTINENT
-- ============================================================

select continent,MAX(cast(total_deaths as int)) as TotalDeathCount
from PotfolioProjects..CovidDeaths
where continent is not null
--where location like '%states%'
group by continent
order by TotalDeathCount desc


-- ============================================================
-- 6. COUNTRIES WITH HIGHEST DEATH COUNTS
-- ============================================================

select location,MAX(cast(total_deaths as int)) as TotalDeathCount
from PotfolioProjects..CovidDeaths
where continent is  null
--where location like '%states%'
group by location
order by TotalDeathCount desc


-- ============================================================
-- 7. GLOBAL COVID-19 NUMBERS
-- ============================================================
-- Calculates global daily cases, deaths, and death percentage.
select date,SUM(new_cases) as total_cases,SUM(CAST(new_Deaths AS int)) as Total_Deaths,SUM(CAST(new_Deaths AS int)) / NULLIF(SUM(new_cases), 0) * 100.0 as DeathPercentage
from PotfolioProjects..CovidDeaths
where continent is not null
group by date
order by 1,2

-- ============================================================
-- 8. POPULATION VS VACCINATIONS
-- ============================================================
-- Uses a JOIN and window function to calculate cumulative
-- vaccinations by location.

SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,
    SUM(CAST(vac.new_vaccinations AS int))
        OVER (
            PARTITION BY dea.location
            ORDER BY dea.location, dea.date
        ) AS RollingPeopleVaccinated
FROM PotfolioProjects..CovidDeaths dea
JOIN PotfolioProjects..CovidVaccination vac
    ON dea.location = vac.location
    AND dea.date = vac.date
WHERE dea.continent IS NOT NULL
ORDER BY dea.location, dea.date

-- ============================================================
-- 9. COMMON TABLE EXPRESSION (CTE)
-- ============================================================
-- Uses a CTE to calculate rolling vaccination totals and
-- vaccination percentage relative to population.
  --CTE USED
  WITH PopvsVac(Continent,Location,Date, Population,New_Vaccinations, RollingPeopleVaccinated
)
AS
(
SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,SUM(CONVERT(int, vac.new_vaccinations)) OVER (PARTITION BY dea.location
ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
--, (RollingPeopleVaccinated / Population) * 100
FROM PotfolioProjects..CovidDeaths dea
    JOIN PotfolioProjects..CovidVaccination vac
        ON dea.location = vac.location
        AND dea.date = vac.date
    WHERE dea.continent IS NOT NULL
    --ORDER BY 2, 3
)

SELECT
    *,
    (RollingPeopleVaccinated / NULLIF(Population, 0)) * 100.0
        AS PercentPopulationVaccinated
FROM PopvsVac
  
-- ============================================================
-- 10. TEMPORARY TABLE
-- ============================================================
-- Stores vaccination calculations in a temporary table for
-- further analysis.

 drop table if exists #percentPopulationVaccinated
Create Table #percentPopulationVaccinated
(
continent nvarchar(255),
location nvarchar(255),
Date datetime,
population numeric,
New_Vaccinations numeric,
RollingPeopleVaccinated numeric
)
insert into #percentPopulationVaccinated

SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,SUM(CONVERT(int, vac.new_vaccinations)) OVER (PARTITION BY dea.location
ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
--, (RollingPeopleVaccinated / Population) * 100
FROM PotfolioProjects..CovidDeaths dea
    JOIN PotfolioProjects..CovidVaccination vac
        ON dea.location = vac.location
        AND dea.date = vac.date
    --WHERE dea.continent IS NOT NULL
    --ORDER BY 2, 3
SELECT
    *,
    (RollingPeopleVaccinated / NULLIF(Population, 0)) * 100.0
        AS PercentPopulationVaccinated
FROM #percentPopulationVaccinated

  GO

-- ============================================================
-- 11. VIEW FOR VISUALIZATION
-- ============================================================
-- Creates a reusable SQL view containing vaccination metrics
-- for reporting and visualization.

CREATE OR ALTER VIEW percentPopulationVaccinated AS
SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,SUM(CONVERT(int, vac.new_vaccinations)) OVER (PARTITION BY dea.location
ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
--, (RollingPeopleVaccinated / Population) * 100
FROM PotfolioProjects..CovidDeaths dea
JOIN PotfolioProjects..CovidVaccination vac
ON dea.location = vac.location
 AND dea.date = vac.date
  where dea.continent is not null
  --order by 2, 3

  select *
  from percentPopulationVaccinated 

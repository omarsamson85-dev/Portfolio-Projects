select *
from PotfolioProjects.dbo.CovidDeaths
where continent is not null
order by 3,4

--select *
--from [POTFOLIO PROJECTS].dbo.CovidVaccination
--order by 3,4

--select the data used

select location,date,total_cases,new_cases,total_deaths,population
from PotfolioProjects..CovidDeaths
order by 1,2

-- total cases vs total deaths
-- shows likelihood of dying if you contact covid in your country 

select location,date,total_cases,total_deaths, (total_deaths/total_cases) *100 as DeathPercentage
from PotfolioProjects..CovidDeaths
where location like '%kenya%'
order by 1,2

--total cases vs population
-- shows what percentage of population got covid

select location,date,total_cases,population,(total_cases/population) *100 as DeathPercentage
from PotfolioProjects..CovidDeaths
where continent is not null

--countries with highest rate compared to population

select location,population,max(total_cases) as HighestinfectionCount,max(total_deaths/total_cases) *100 as PercentPopulationinfected
from PotfolioProjects..CovidDeaths
where continent is not null
--where location like '%states%'
group by location,population
order by PercentPopulationinfected desc


--Breaking down by Continent

select continent,MAX(cast(total_deaths as int)) as TotalDeathCount
from PotfolioProjects..CovidDeaths
where continent is not null
--where location like '%states%'
group by continent
order by TotalDeathCount desc


-- showing countries with highest death count per population

select location,MAX(cast(total_deaths as int)) as TotalDeathCount
from PotfolioProjects..CovidDeaths
where continent is  null
--where location like '%states%'
group by location
order by TotalDeathCount desc

--continents with the highest deathcount per population

select continent,MAX(cast(total_deaths/continent as int)) as TotalDeathCountperpopulation
from PotfolioProjects..CovidDeaths
where continent is not null
--where location like '%states%'
group by continent
order by TotalDeathCountperpopulation desc

--GLOBAL NUMBERS

select date,sum(new_cases)as total_cases,SUM(cast(new_Deaths as int))as Total_Deaths,SUM(cast(new_Deaths as int))/SUM(new_cases) *100 as Deathpercentage
from PotfolioProjects..CovidDeaths
--where location like '%kenya%'
where continent is not null
group by date
order by 1,2

--total population vs vaccinations

SELECT dea.continent,dea.location,dea.date,dea.population,dea.new_vaccinations
,SUM(cast(dea.new_vaccinations as int)) over (partition by dea.location order by dea.location,dea.date) as RollingpeopleVaccinated
--RollingpeopleVaccinated/population)*100
from PotfolioProjects..CovidDeaths dea
join PotfolioProjects..CovidVaccination vac
  on dea.location = vac.location
  and dea.date = vac.date
  where dea.continent is not null
  order by 2,3


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

SELECT *,( RollingPeopleVaccinated/Population)*100
FROM PopvsVac 

--temp table

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
SELECT *,( RollingPeopleVaccinated/Population)*100
FROM  #percentPopulationVaccinated



--Creating view for visualisations
create view percentPopulationVaccinated as
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
select *
from PotfolioProjects.dbo.NationalHousing

--standardize date format

select SaleDateConverted,CONVERT(date, SaleDate)
from PotfolioProjects.dbo.NationalHousing

update NationalHousing
set SaleDate = CONVERT(date, SaleDate)

ALTER TABLE  NationalHousing
add SaleDateConverted Date;

update NationalHousing
set SaleDateConverted = CONVERT(date, SaleDate)


--populate property address data

select *
from PotfolioProjects.dbo.NationalHousing
--where PropertyAddress is null
order by ParcelID

select a.ParcelID,b.ParcelID,b.PropertyAddress,isnull(a.PropertyAddress,b.PropertyAddress)
from PotfolioProjects.dbo.NationalHousing a
join PotfolioProjects.dbo.NationalHousing b
   on a.ParcelID = b.ParcelID
   and a.[UniqueID ] <> b.[UniqueID ]
   where a.PropertyAddress is null

   update a
   set PropertyAddress = isnull(a.PropertyAddress,b.PropertyAddress)
   from PotfolioProjects.dbo.NationalHousing a
join PotfolioProjects.dbo.NationalHousing b
   on a.ParcelID = b.ParcelID
   and a.[UniqueID ] <> b.[UniqueID ]

--breaking out address into individual columns(address,city,state)

select PropertyAddress 
from PotfolioProjects.dbo.NationalHousing
--where PropertyAddress is null
--order by ParcelID

SELECT
SUBSTRING(PropertyAddress, 1,CHARINDEX(',', PropertyAddress) - 1) AS Address,
 SUBSTRING(PropertyAddress,CHARINDEX(',', PropertyAddress) + 1, LEN(PropertyAddress)) AS Address

from PotfolioProjects.dbo.NationalHousing


ALTER TABLE  NationalHousing
add PropertySplitAdress nvarchar(255);

update NationalHousing
set PropertySplitAdress = SUBSTRING(PropertyAddress, 1,CHARINDEX(',', PropertyAddress) - 1)

ALTER TABLE  NationalHousing
add  PropertySplicity nvarchar(255);

update NationalHousing
set PropertySplicity = SUBSTRING(PropertyAddress,CHARINDEX(',', PropertyAddress) + 1, LEN(PropertyAddress)) 


SELECT *
FROM PotfolioProjects.dbo.NationalHousing

SELECT OwnerAddress
FROM PotfolioProjects.dbo.NationalHousing

select 
PARSENAME(REPLACE(OwnerAddress, ',', '.') ,3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') ,2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') ,1)
from PotfolioProjects.dbo.NationalHousing


ALTER TABLE  NationalHousing
add OwnerSplitAdress nvarchar(255);

update NationalHousing
set OwnerSplitAdress = PARSENAME(REPLACE(OwnerAddress, ',', '.') ,3)

ALTER TABLE  NationalHousing
add  OwnerSplicity nvarchar(255);

update NationalHousing
set OwnerSplicity  = PARSENAME(REPLACE(OwnerAddress, ',', '.') ,2)

select *
from PotfolioProjects.dbo.NationalHousing

--changing Y and N to Yes and No in 'Sold as Vacant" field

select distinct(SoldAsVacant), COUNT(SoldAsVacant)
from PotfolioProjects.dbo.NationalHousing
group by SoldAsVacant
order by 2

SELECT
    SoldAsVacant,
    CASE
        WHEN SoldAsVacant = 'Y' THEN 'Yes'
        WHEN SoldAsVacant = 'N' THEN 'No'
        ELSE SoldAsVacant
    END
FROM PotfolioProjects.dbo.NationalHousing


update NationalHousing
set SoldAsVacant = CASE
        WHEN SoldAsVacant = 'Y' THEN 'Yes'
        WHEN SoldAsVacant = 'N' THEN 'No'
        ELSE SoldAsVacant
    END
   

--Remove the null values and replacing them with default values
   UPDATE NationalHousing
SET
    OwnerName = COALESCE(OwnerName, 'Unknown'),
    YearBuilt = COALESCE(YearBuilt, 0),
    Bedrooms = COALESCE(Bedrooms, 0),
    FullBath = COALESCE(FullBath, 0),
    HalfBath = COALESCE(HalfBath, 0),
    Acreage  = COALESCE(Acreage, 0),
    LandValue  = COALESCE( LandValue , 0),
    BuildingValue = COALESCE(BuildingValue, 0),
    TotalValue = COALESCE(TotalValue, 0);

--Remove Duplicates

    WITH RowNumCTE AS(
SELECT *,
   ROW_NUMBER() OVER (
      PARTITION BY ParcelID,
             PropertyAddress,
             SalePrice,
             SaleDate,
             LegalReference
           ORDER BY UniqueID
       ) AS row_num
FROM PotfolioProjects.dbo.NationalHousing
--order by ParcelID
)
SELECT *
FROM RowNumCTE
WHERE row_num > 1
order by PropertyAddress


select *
from PotfolioProjects.dbo.NationalHousing

ALTER TABLE PotfolioProjects.dbo.NationalHousing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress

ALTER TABLE PotfolioProjects.dbo.NationalHousing
DROP COLUMN SaleDate

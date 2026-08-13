/*
============================================================
NASHVILLE HOUSING DATA CLEANING
============================================================
Purpose:
Clean and standardize the Nashville housing dataset using
SQL Server.

Source Table:
- PotfolioProjects.dbo.NationalHousing

Cleaning Tasks:
- Standardize sale dates
- Populate missing property addresses
- Split property addresses into separate columns
- Split owner addresses into separate columns
- Standardize SoldAsVacant values
- Handle selected missing values
- Identify and remove duplicate records
- Remove redundant source columns

SQL Techniques Demonstrated:
- SELECT
- UPDATE
- ALTER TABLE
- JOINs
- ISNULL / COALESCE
- CASE statements
- SUBSTRING
- CHARINDEX
- PARSENAME
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- Duplicate detection and removal
============================================================
*/


-- ============================================================
-- 1. INITIAL DATA EXPLORATION
-- ============================================================

SELECT *
FROM PotfolioProjects.dbo.NationalHousing;


-- ============================================================
-- 2. STANDARDIZE SALE DATE
-- ============================================================

-- Review the original date and converted date

SELECT
    SaleDate,
    CONVERT(date, SaleDate) AS SaleDateConverted
FROM PotfolioProjects.dbo.NationalHousing;


-- Add a cleaned date column

ALTER TABLE PotfolioProjects.dbo.NationalHousing
ADD SaleDateConverted date;


-- Populate the cleaned date column

UPDATE PotfolioProjects.dbo.NationalHousing
SET SaleDateConverted = CONVERT(date, SaleDate);


-- ============================================================
-- 3. POPULATE MISSING PROPERTY ADDRESSES
-- ============================================================
-- Uses ParcelID to find another record for the same property
-- containing a non-null PropertyAddress.

SELECT
    a.ParcelID,
    a.PropertyAddress AS MissingPropertyAddress,
    b.PropertyAddress AS AvailablePropertyAddress
FROM PotfolioProjects.dbo.NationalHousing a
JOIN PotfolioProjects.dbo.NationalHousing b
    ON a.ParcelID = b.ParcelID
    AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress IS NULL
  AND b.PropertyAddress IS NOT NULL;


-- Populate missing property addresses

UPDATE a
SET a.PropertyAddress = b.PropertyAddress
FROM PotfolioProjects.dbo.NationalHousing a
JOIN PotfolioProjects.dbo.NationalHousing b
    ON a.ParcelID = b.ParcelID
    AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress IS NULL
  AND b.PropertyAddress IS NOT NULL;


-- ============================================================
-- 4. SPLIT PROPERTY ADDRESS
-- ============================================================
-- Separates PropertyAddress into:
-- - PropertySplitAddress
-- - PropertySplitCity

SELECT
    PropertyAddress,
    CASE
        WHEN CHARINDEX(',', PropertyAddress) > 0
        THEN SUBSTRING(
            PropertyAddress,
            1,
            CHARINDEX(',', PropertyAddress) - 1
        )
    END AS PropertySplitAddress,
    CASE
        WHEN CHARINDEX(',', PropertyAddress) > 0
        THEN LTRIM(
            SUBSTRING(
                PropertyAddress,
                CHARINDEX(',', PropertyAddress) + 1,
                LEN(PropertyAddress)
            )
        )
    END AS PropertySplitCity
FROM PotfolioProjects.dbo.NationalHousing;


-- Add separate property address columns

ALTER TABLE PotfolioProjects.dbo.NationalHousing
ADD PropertySplitAddress nvarchar(255);


ALTER TABLE PotfolioProjects.dbo.NationalHousing
ADD PropertySplitCity nvarchar(255);


-- Populate the new property address columns

UPDATE PotfolioProjects.dbo.NationalHousing
SET
    PropertySplitAddress =
        CASE
            WHEN CHARINDEX(',', PropertyAddress) > 0
            THEN SUBSTRING(
                PropertyAddress,
                1,
                CHARINDEX(',', PropertyAddress) - 1
            )
        END,

    PropertySplitCity =
        CASE
            WHEN CHARINDEX(',', PropertyAddress) > 0
            THEN LTRIM(
                SUBSTRING(
                    PropertyAddress,
                    CHARINDEX(',', PropertyAddress) + 1,
                    LEN(PropertyAddress)
                )
            )
        END;


-- ============================================================
-- 5. SPLIT OWNER ADDRESS
-- ============================================================
-- Separates OwnerAddress into:
-- - OwnerSplitAddress
-- - OwnerSplitCity
-- - OwnerSplitState

SELECT
    OwnerAddress,
    PARSENAME(REPLACE(OwnerAddress, ',', '.'), 3) AS OwnerSplitAddress,
    PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2) AS OwnerSplitCity,
    PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1) AS OwnerSplitState
FROM PotfolioProjects.dbo.NationalHousing;


-- Add separate owner address columns

ALTER TABLE PotfolioProjects.dbo.NationalHousing
ADD OwnerSplitAddress nvarchar(255);


ALTER TABLE PotfolioProjects.dbo.NationalHousing
ADD OwnerSplitCity nvarchar(255);


ALTER TABLE PotfolioProjects.dbo.NationalHousing
ADD OwnerSplitState nvarchar(255);


-- Populate the owner address columns

UPDATE PotfolioProjects.dbo.NationalHousing
SET
    OwnerSplitAddress =
        PARSENAME(REPLACE(OwnerAddress, ',', '.'), 3),

    OwnerSplitCity =
        PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2),

    OwnerSplitState =
        PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1);


-- ============================================================
-- 6. STANDARDIZE SOLD AS VACANT
-- ============================================================
-- Converts:
-- Y -> Yes
-- N -> No

SELECT
    SoldAsVacant,
    COUNT(SoldAsVacant) AS RecordCount
FROM PotfolioProjects.dbo.NationalHousing
GROUP BY SoldAsVacant
ORDER BY RecordCount DESC;


SELECT
    SoldAsVacant,
    CASE
        WHEN SoldAsVacant = 'Y' THEN 'Yes'
        WHEN SoldAsVacant = 'N' THEN 'No'
        ELSE SoldAsVacant
    END AS StandardizedSoldAsVacant
FROM PotfolioProjects.dbo.NationalHousing;


UPDATE PotfolioProjects.dbo.NationalHousing
SET SoldAsVacant =
    CASE
        WHEN SoldAsVacant = 'Y' THEN 'Yes'
        WHEN SoldAsVacant = 'N' THEN 'No'
        ELSE SoldAsVacant
    END;


-- ============================================================
-- 7. HANDLE SELECTED MISSING VALUES
-- ============================================================
-- Replaces selected missing values with defined defaults.
--
-- Note:
-- Replacing missing numeric values with 0 is an analytical
-- decision and should only be done when 0 is an appropriate
-- representation of missing data for the project.

UPDATE PotfolioProjects.dbo.NationalHousing
SET
    OwnerName = COALESCE(OwnerName, 'Unknown'),
    YearBuilt = COALESCE(YearBuilt, 0),
    Bedrooms = COALESCE(Bedrooms, 0),
    FullBath = COALESCE(FullBath, 0),
    HalfBath = COALESCE(HalfBath, 0),
    Acreage = COALESCE(Acreage, 0),
    LandValue = COALESCE(LandValue, 0),
    BuildingValue = COALESCE(BuildingValue, 0),
    TotalValue = COALESCE(TotalValue, 0);


-- ============================================================
-- 8. IDENTIFY DUPLICATE RECORDS
-- ============================================================
-- Uses ROW_NUMBER() to identify records with matching
-- property and transaction attributes.

WITH RowNumCTE AS
(
    SELECT
        *,
        ROW_NUMBER() OVER
        (
            PARTITION BY
                ParcelID,
                PropertyAddress,
                SalePrice,
                SaleDate,
                LegalReference
            ORDER BY [UniqueID ]
        ) AS row_num
    FROM PotfolioProjects.dbo.NationalHousing
)

SELECT *
FROM RowNumCTE
WHERE row_num > 1
ORDER BY PropertyAddress;


-- ============================================================
-- 9. REMOVE DUPLICATE RECORDS
-- ============================================================
-- Keeps the first record in each duplicate group and removes
-- subsequent duplicates.

WITH RowNumCTE AS
(
    SELECT
        [UniqueID ],
        ROW_NUMBER() OVER
        (
            PARTITION BY
                ParcelID,
                PropertyAddress,
                SalePrice,
                SaleDate,
                LegalReference
            ORDER BY [UniqueID ]
        ) AS row_num
    FROM PotfolioProjects.dbo.NationalHousing
)

DELETE FROM PotfolioProjects.dbo.NationalHousing
WHERE [UniqueID ] IN
(
    SELECT [UniqueID ]
    FROM RowNumCTE
    WHERE row_num > 1
);


-- ============================================================
-- 10. REMOVE REDUNDANT SOURCE COLUMNS
-- ============================================================
-- The cleaned/split columns are retained while the original
-- redundant columns are removed.

ALTER TABLE PotfolioProjects.dbo.NationalHousing
DROP COLUMN
    OwnerAddress,
    TaxDistrict,
    PropertyAddress,
    SaleDate;


-- ============================================================
-- 11. FINAL CLEANED DATASET
-- ============================================================

SELECT *
FROM PotfolioProjects.dbo.NationalHousing;

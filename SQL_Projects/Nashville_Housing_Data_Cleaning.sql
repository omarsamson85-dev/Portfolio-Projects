/*
Nashville Housing Data Cleaning
Microsoft SQL Server / SSMS

Purpose:
Clean and standardize the Nashville Housing dataset in the NationalHousing
working table so it is easier to analyze.

Run the sections in order. The duplicate-removal section keeps the first
record for each duplicate group based on UniqueID.
*/

/* 1. Standardize SaleDate */
ALTER TABLE NationalHousing ADD SaleDateConverted DATE;

UPDATE NationalHousing
SET SaleDateConverted = TRY_CONVERT(DATE, SaleDate);

/* 2. Populate missing PropertyAddress values using ParcelID */
UPDATE a
SET a.PropertyAddress = COALESCE(a.PropertyAddress, b.PropertyAddress)
FROM NationalHousing AS a
JOIN NationalHousing AS b
    ON a.ParcelID = b.ParcelID
    AND a.UniqueID <> b.UniqueID
WHERE a.PropertyAddress IS NULL
  AND b.PropertyAddress IS NOT NULL;

/* 3. Split PropertyAddress */
ALTER TABLE NationalHousing
ADD PropertySplitAddress NVARCHAR(255),
    PropertySplitCity NVARCHAR(255);

UPDATE NationalHousing
SET PropertySplitAddress = LTRIM(RTRIM(
        CASE WHEN CHARINDEX(',', PropertyAddress) > 0
             THEN LEFT(PropertyAddress, CHARINDEX(',', PropertyAddress) - 1)
             ELSE PropertyAddress END)),
    PropertySplitCity = LTRIM(RTRIM(
        CASE WHEN CHARINDEX(',', PropertyAddress) > 0
             THEN SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1, LEN(PropertyAddress))
             ELSE NULL END));

/* 4. Split OwnerAddress */
ALTER TABLE NationalHousing
ADD OwnerSplitAddress NVARCHAR(255),
    OwnerSplitCity NVARCHAR(255),
    OwnerSplitState NVARCHAR(50);

UPDATE NationalHousing
SET OwnerSplitAddress = LTRIM(RTRIM(
        CASE WHEN CHARINDEX(',', OwnerAddress) > 0
             THEN LEFT(OwnerAddress, CHARINDEX(',', OwnerAddress) - 1)
             ELSE OwnerAddress END)),
    OwnerSplitCity = LTRIM(RTRIM(
        CASE WHEN CHARINDEX(',', OwnerAddress) > 0
             AND CHARINDEX(',', SUBSTRING(OwnerAddress, CHARINDEX(',', OwnerAddress) + 1, LEN(OwnerAddress))) > 0
             THEN LEFT(
                    SUBSTRING(OwnerAddress, CHARINDEX(',', OwnerAddress) + 1, LEN(OwnerAddress)),
                    CHARINDEX(',', SUBSTRING(OwnerAddress, CHARINDEX(',', OwnerAddress) + 1, LEN(OwnerAddress))) - 1)
             ELSE NULL END)),
    OwnerSplitState = LTRIM(RTRIM(
        CASE WHEN CHARINDEX(',', OwnerAddress) > 0
             AND CHARINDEX(',', OwnerAddress, CHARINDEX(',', OwnerAddress) + 1) > 0
             THEN RIGHT(OwnerAddress,
                    LEN(OwnerAddress) - CHARINDEX(',', OwnerAddress, CHARINDEX(',', OwnerAddress) + 1))
             ELSE NULL END));

/* 5. Standardize SoldAsVacant */
UPDATE NationalHousing
SET SoldAsVacant = CASE
    WHEN SoldAsVacant = 'Y' THEN 'Yes'
    WHEN SoldAsVacant = 'N' THEN 'No'
    ELSE SoldAsVacant
END;

/* 6. Review selected missing values */
SELECT
    COUNT(*) AS TotalRows,
    SUM(CASE WHEN PropertyAddress IS NULL THEN 1 ELSE 0 END) AS MissingPropertyAddress,
    SUM(CASE WHEN OwnerAddress IS NULL THEN 1 ELSE 0 END) AS MissingOwnerAddress,
    SUM(CASE WHEN SoldAsVacant IS NULL THEN 1 ELSE 0 END) AS MissingSoldAsVacant
FROM NationalHousing;

/* 7. Identify duplicate records */
WITH DuplicateCheck AS
(
    SELECT *,
        ROW_NUMBER() OVER
        (
            PARTITION BY ParcelID, PropertyAddress, SalePrice,
                         SaleDateConverted, LegalReference
            ORDER BY UniqueID
        ) AS RowNum
    FROM NationalHousing
)
SELECT *
FROM DuplicateCheck
WHERE RowNum > 1
ORDER BY ParcelID, UniqueID;

/* 8. Remove duplicates; retain the lowest UniqueID */
WITH DuplicateRemoval AS
(
    SELECT UniqueID,
        ROW_NUMBER() OVER
        (
            PARTITION BY ParcelID, PropertyAddress, SalePrice,
                         SaleDateConverted, LegalReference
            ORDER BY UniqueID
        ) AS RowNum
    FROM NationalHousing
)
DELETE FROM NationalHousing
WHERE UniqueID IN
(
    SELECT UniqueID
    FROM DuplicateRemoval
    WHERE RowNum > 1
);

/* 9. Remove redundant columns after validation */
ALTER TABLE NationalHousing DROP COLUMN SaleDate;
EXEC sp_rename 'NationalHousing.SaleDateConverted', 'SaleDate', 'COLUMN';
ALTER TABLE NationalHousing DROP COLUMN OwnerAddress, PropertyAddress;

/* 10. Final validation */
SELECT TOP (100)
    UniqueID, ParcelID, LandUse, SaleDate, SalePrice, LegalReference,
    SoldAsVacant, OwnerName, PropertySplitAddress, PropertySplitCity,
    OwnerSplitAddress, OwnerSplitCity, OwnerSplitState
FROM NationalHousing
ORDER BY UniqueID;

/* Verify that no duplicate groups remain */
WITH DuplicateCheck AS
(
    SELECT UniqueID,
        ROW_NUMBER() OVER
        (
            PARTITION BY ParcelID, PropertySplitAddress, SalePrice,
                         SaleDate, LegalReference
            ORDER BY UniqueID
        ) AS RowNum
    FROM NationalHousing
)
SELECT COUNT(*) AS RemainingDuplicateRows
FROM DuplicateCheck
WHERE RowNum > 1;

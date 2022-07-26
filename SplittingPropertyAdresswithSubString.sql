


--- displays row where propertAddress is null with unique ID
--Select  a.ParcelID ,a.PropertyAddress, b.ParcelID, b.PropertyAddress,
--ISNULL(a.propertyAddress, b.PropertyAddress)
--FROM nashville.dbo.nashvillehousing a
--JOIN nashville.dbo.nashvillehousing b 
--ON a.parcelID = b.parcelID 
--WHERE a.[UniqueID ] <> b.[UniqueID] 
--And a.PropertyAddress IS NULL

--- update NULL propertyaddress rows with an address
--Update a
--Set PropertyAddress = ISNULL(a.propertyAddress, b.PropertyAddress)
--FROM nashville.dbo.nashvillehousing a
--JOIN nashville.dbo.nashvillehousing b 
--ON a.parcelID = b.parcelID 
--WHERE a.[UniqueID ] <> b.[UniqueID] 
--And a.PropertyAddress IS NULL

---
---FIND NULL PropertyAddress  should return none
--SELECT propertyAddress
--FROM nashville.dbo.nashvillehousing
------WHERE PropertyAddress IS NULL
--ORDER BY ParcelID


----- find ","  in propertyAddress starting at position 1
--SELECT 
--substring(PropertyAddress, 1, CHARINDEX(',', PropertyAddress))
--FROM nashville.dbo.nashvillehousing

---find the position of the comma in property addresss
--SELECT 
--substring(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)) As Address,
--CHARINDEX(',', PropertyAddress) as Position
--FROM nashville.dbo.nashvillehousing


---find comma in propertyaddresss and minus 1 from the last position to remove the comma
--SELECT 
--substring(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1) As Address
--FROM nashville.dbo.nashvillehousing


---select propertyAddress from nashville.dbo.nashvillehousing

--Parse city from PropertyAddress
--SELECT 
--substring(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1) As Address,
--substring(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress)) AS  City
--FROM nashville.dbo.nashvillehousing


---Add a column, datatype to the table to store the formatted value

--Alter TABLE nashville.dbo.nashvillehousing
--ADD Street Nvarchar(255);

--UPDATE nashville.dbo.nashvillehousing
--SET street = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1)

--Alter TABLE nashville.dbo.nashvillehousing 
--ADD City Nvarchar(255);

--UPDATE nashville.dbo.nashvillehousing
--SET City = substring(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress)) 

-- new columns street and city should be at the end of the table
select * from nashville.dbo.nashvillehousing;



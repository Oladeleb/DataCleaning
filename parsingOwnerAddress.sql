--- parsing OwnerAddress

--SELECT OwnerAddress from nashville.dbo.nashvillehousing;
----- REPLACE comma with blankspace
--SELECT 
--PARSENAME(REPLACE(OwnerAddress, ',', ' '), 1)
--FROM nashville.dbo.nashvillehousing



---SELECT OwnerAddress from nashville.dbo.nashvillehousing;

--- Parse street, city and state from propertyAddress
--SELECT 
--PARSENAME(REPLACE(OwnerAddress, ',', ' .'), 3) AS Street,
--PARSENAME(REPLACE(OwnerAddress, ',', ' .'), 2) AS City,
--PARSENAME(REPLACE(OwnerAddress, ',', ' .'), 1) AS State
--FROM nashville.dbo.nashvillehousing



--Alter TABLE nashville.dbo.nashvillehousing
--ADD ownerstreet Nvarchar(255);

--UPDATE nashville.dbo.nashvillehousing
--SET ownerstreet = PARSENAME(REPLACE(OwnerAddress, ',','.'),3)


--Alter TABLE nashville.dbo.nashvillehousing 
--ADD ownercity Nvarchar(255);

--UPDATE nashville.dbo.nashvillehousing
--SET ownercity = PARSENAME(REPLACE(OwnerAddress, ',','.'),2)

--Alter TABLE nashville.dbo.nashvillehousing
--ADD ownerstate Nvarchar(255);

--UPDATE nashville.dbo.nashvillehousing
--SET ownerstate = PARSENAME(REPLACE(OwnerAddress, ',','.'),1)


---select * from nashville.dbo.nashvillehousing;
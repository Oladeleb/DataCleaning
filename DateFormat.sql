  
 --- DatetimeStamp formatted to Date
 ---Select SaleDate, CONVERT(Date, SaleDate) as Date
 ---FROM  nashville.dbo.nashvillehousing 

--- Add a new column to store the table
---alter table nashville.dbo.nashvillehousing
---Add SalesDate = Convert(Date, SaleDate)

---Update the table with the converted data  
--Update nashville.dbo.nashvillehousing
---SET SaleDate = CONVERT(Date, SaleDate)[dbo].[nashvilleHousing]

---Retreive the new column from the table
SELECT  h.*, SaleDate
FROM  nashville.dbo.nashvillehousing h
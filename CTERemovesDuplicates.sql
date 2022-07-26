---Remove Duplicates

--SELECT * FROM nashville.DBO.nashvillehousing
--SELECT *,
--ROW_NUMBER() OVER (
--PARTITION BY ParcelId, 
--			 PropertyAddress,
--			 SalePrice,
--			 SaleDate,
--			 LegalReference
--			 ORDER BY
--			 UNIQUEID)row_num
--FROM nashville.dbo.nashvillehousing
--ORDER BY ParcelID

--WITH rownumcte AS (
--SELECT *,
--ROW_NUMBER() OVER (
--PARTITION BY ParcelId, 
--			 PropertyAddress,
--			 SalePrice,
--			 SaleDate,
--			 LegalReference
--			 ORDER BY
--			 UNIQUEID)row_num
--FROM nashville.dbo.nashvillehousing
--)
--SELECT *
--FROM rownumcte
--WHERE row_num > 1 
--ORDER BY PropertyAddress

---Delete Duplicates 
--WITH rownumcte AS (
--SELECT *,
--ROW_NUMBER() OVER (
--PARTITION BY ParcelId, 
--			 PropertyAddress,
--			 SalePrice,
--			 SaleDate,
--			 LegalReference
--			 ORDER BY
--			 UNIQUEID)row_num
--FROM nashville.dbo.nashvillehousing
--)
--DELETE
--FROM rownumcte
--WHERE row_num > 1 

---Delete unused Columns
---ALTER TABLE nashville.dbo.nashvillehousing
---DROP COLUMN TaxDistrict, PropertyAddress;


---Delete unused Columns
ALTER TABLE nashville.dbo.nashvillehousing
DROP COLUMN SaleDate;

Select *
From nashville.dbo.nashvillehousing


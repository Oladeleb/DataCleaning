
--SELECT Distinct(SoldAsVacant), h.*
--FROM nashville.dbo.nashvillehousing h

--- review soldASVacant list of values
--SELECT Distinct(SoldAsVacant)
--FROM nashville.dbo.nashvillehousing

SELECT Distinct(soldAsVacant), COUNT(SoldAsVacant) AS Count
FROM nashville.dbo.nashvillehousing
GROUP BY SoldAsVacant
ORDER By 2

--SELECT soldAsVacant,
--CASE WHEN soldAsVacant = 'Y' THEN 'Yes'
--	 WHEN soldAsVacant = 'N' THEN 'NO'
--	 ELSE soldAsVacant
--	 END
--FROM nashville.dbo.nashvillehousing

--select distinct(soldAsVacant), h.* from nashville.dbo.nashvillehousing h 
--where soldAsVacant ='Y'

--UPDATE nashville.dbo.nashvillehousing
--SET soldAsVacant =
--CASE WHEN soldAsVacant = 'Y' THEN 'Yes'
--	 WHEN soldAsVacant = 'N' THEN 'NO'
--	 ELSE soldAsVacant
--	 END


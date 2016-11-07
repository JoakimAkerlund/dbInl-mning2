CREATE PROCEDURE InsertRegionAndTerritory(
  @TerritoryID NVARCHAR(20), 
  @RegionDescription NCHAR(50), 
  @TerritoryDescription NCHAR(50),
  @RegionID INT OUTPUT)

AS

  SELECT @RegionID=MAX(RegionID)+1 FROM Region

  INSERT INTO Region (RegionID, RegionDescription) 
    VALUES (@RegionID, @RegionDescription)
  INSERT INTO Territories (TerritoryID, 
                           RegionID, 
                           TerritoryDescription)
    VALUES (@TerritoryID, @RegionID, @TerritoryDescription)
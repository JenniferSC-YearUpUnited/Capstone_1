## select specific datbase ## 
USE market_research; 

## inital query to retrieve all columns from table ## 
SELECT * FROM market_research.farmarea; 

## subquery to compare the area of farmland in 2022 to the max area of farmland of all four years ## 
SELECT years,area, amount_of_area,
(SELECT MAX(amount_of_area) 
FROM farmarea) AS 'max_area'
FROM farmarea
WHERE years = "2022" AND area = "farmland";


##subquery to compare the area of cropland in 2022 to the max area of cropland of all four years ## 
SELECT years,area, amount_of_area,
(SELECT MAX(amount_of_area) 
FROM farmarea 
WHERE area = "cropland") AS 'max_area'
FROM farmarea
WHERE years = "2022" AND area = "cropland";

## I had to connect my data by creating a primary key being the commodityid for the next query## 
SELECT DISTINCT *
FROM topcommodities JOIN topexports
ON topcommodities.commodityid = topexports.commodityid;

## display the total of income for illinois commodity and export of soybeans ## 
SELECT topcommodities.commodity, SUM(topcommodities.income+ topexports.income) AS 'total'
FROM topcommodities INNER JOIN topexports
ON topcommodities.commodityid = topexports.commodityid
WHERE topcommodities.commodity = "soybeans"
GROUP BY topcommodities.commodity;





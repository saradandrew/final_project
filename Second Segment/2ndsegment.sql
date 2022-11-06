-- Create Table housing_pop2019, Join housing and population_2019
SELECT population_2019.state, population_2019.population_2019, housing.status, housing.price, housing.bed, housing.bath, housing.acre_lot, housing.city, 
	   housing.zip_code, housing.house_size, housing.sold_date
INTO housing_pop2019
FROM population_2019
INNER JOIN housing
ON population_2019.state = housing.state;

SELECT * FROM housing_pop2019 

-- Create Table housing_pop2020, Join housing and population_2020
SELECT population_2020.state, population_2020.population_2020, housing.status, housing.price, housing.bed, housing.bath, housing.acre_lot, housing.city, 
	   housing.zip_code, housing.house_size, housing.sold_date
INTO housing_pop2020
FROM population_2020
INNER JOIN housing
ON population_2020.state = housing.state;

SELECT * FROM housing_pop2020 

-- Create Table housing_pop2021, Join housing and population_2021
SELECT population_2021.state, population_2021.population_2021, housing.status, housing.price, housing.bed, housing.bath, housing.acre_lot, housing.city, 
	   housing.zip_code, housing.house_size, housing.sold_date
INTO housing_pop2021
FROM population_2021
INNER JOIN housing
ON population_2021.state = housing.state;

SELECT * FROM housing_pop2021

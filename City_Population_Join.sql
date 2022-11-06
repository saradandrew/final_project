-- Create Table housing_urban_pops, Join housing and urban_populations
SELECT housing.status, housing.price, housing.bed, housing.bath, housing.acre_lot, housing.city, housing.zip_code, 
	   housing.house_size, housing.sold_date, urban_populations.population_2019, 
	   urban_populations.population_2020, urban_populations.population_2021
INTO housing_urban_pops
FROM urban_populations
INNER JOIN housing
ON urban_populations.city = housing.city;

SELECT * FROM housing_urban_pops

-- Create Table housing_city_pops, Join housing and city_populations
SELECT housing.status, housing.price, housing.bed, housing.bath, housing.acre_lot, housing.city, housing.zip_code, 
	   housing.house_size, housing.sold_date, city_populations.population_2019, 
	   city_populations.population_2020, city_populations.population_2021
INTO housing_city_pops
FROM city_populations
INNER JOIN housing
ON city_populations.city = housing.city;

SELECT * FROM housing_city_pops

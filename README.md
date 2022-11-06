# Final Project

## First Segment (Circle Role)
During the first segment of the project , the circle role is in charge of the mockup database. For our database, we will be using PostgreSQL by use of pgAdmin. The image below, ERD, represents the tables of data that are uploaded onto the database in Postgres. It was a helpful reference while importing data into the database.

All tables include data from 2019-2021 for the following states: California, Florida, New York, Tennessee, & Texas.

Tables Uploaded: 
1. State Population 2019
2. State Population 2020
3. State Population 2021
4. Zillow Home Value Index
5. RDC State Metrics

![QuickDBD-export (7)](https://user-images.githubusercontent.com/101649525/198473506-8871c4dd-50eb-4ff8-bb2c-ecb1eb9cf8ac.png)


## Second Segment (Triangle Role)
During the second segment, we changed datasets. The data was cleaned and the following tables were created using Python with Jupyter Notebook then exported to SQL:

1. Housing
2. Population_2019
3. Population_2020
4. Population_2021

Once tables were uploaded in PostgreSQL, an INNER JOIN was performed for each population year and the housing table. Creating the following tables:

1. Housing_pop2019
2. Housing_pop2020
3. Housing_pop2021


![QuickDBD-2nd](https://user-images.githubusercontent.com/101649525/199623884-8ebb786c-6118-4e75-9b26-90e797b9c267.png)

SQLAlchemy is used as a connection string to import the tables into Python and will be used in the Machine Learning Model.

## Third Segment
During the third segment, we finalized our datasets. The data was scaled down to the city level of New York state. We used 8 urban cities and 5 large cties, specifiaclly the 5 boroughs of NYC (Brooklyn, Bronx, Manhattan, Staten Island, & Queens). The data was preprocessed and the following tables were created using Python with Jupyter Notebook then exported to pgadmin:

1. housing
2. urban_populations
3. city_populations

Once tables were in pgadmin, using PostgreSQL, an INNER JOIN was performed for each population file and the housing table. Creating the following tables:

1. housing_urban_pops
2. housing_city_pops

Those tables were then imported by using SQLalchemy into the Machine Learning environment in Jupyter Notebook. 

![QuickDBD-export (10)](https://user-images.githubusercontent.com/101649525/200152034-f1f663d3-fc63-4186-92be-fa24c55a76c4.png)

## Fourth Segment

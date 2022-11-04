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
During the second segemnt, we decided on our final datasets. The data was cleaned and the following tables were created using Python with Jupyter Notebook then exported to SQL:

1. Housing
2. Population_2019
3. Population_2020
4. Population_2021

Once tables were uploaded in PostgreSQL, an INNER JOIN was performed for each population year and the housing table. Creating the following tables:

Housing_pop2019
Housing_pop2020
Housing_pop2021


![QuickDBD-2nd](https://user-images.githubusercontent.com/101649525/199623884-8ebb786c-6118-4e75-9b26-90e797b9c267.png)

SQLAlchemy is used as a connection string to import the tables into Python and will be used in the Machine Learning Model.

## Third Segment

## Fourth Segment

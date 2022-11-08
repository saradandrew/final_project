## Team Information

- Team
  - Sara Andrew, Brandon Duprel, Samantha Harris, Carissa McCormick
- Topic
  - Housing Prices vs Population
- Reason the topic was selected
  - Curiosity about the housing boom that seemed to occur during the pandemic, specifically in the highly populated state of New York.
- Description of the source of data
  - Kaggle Data Sets, CSV format
- Questions the team hopes to answer with the data
  - Was there an effect on housing prices and populations due to the covid-19 pandemic?
  - Does the number of bedrooms matter? What about bathrooms? Square footage? Size of the acre lot?
  - Does population have an impact on housing prices? (Machine-Learning Linear Regression Model prediction)

## First Segment 

#### Samantha (X Role): Presentation/Data Preprocessing 
- Technologies were discussed amongst the group and typed up in a markdown format. It will be updated if needed as we progess through the project.
- Data preprocessing has been done (cleaned, encoded, scaled data, added preliminary sql connection coding)
  - Each TM will need to create a config.py to run the full code on their individual computers
- An index.html rough outline has been created to get us an idea of how our data will be displayed for the final presentation
  - Google Slides & Interactive Tableau Dashboard will be embedded here
- Next steps discussed by the team will be to import tables into PostgreSQL to join population data into housing prices data to use with our ML model
  - Possibly splitting the data into separate states for separate ML models

## Second Segment 

#### Brandon (Triangle Role)
We are looking at how change in population impacts housing prices. This was done by creating a linear regression. 

Data was found on Kaggle for real estate information in New York. We also found New York population from 2019 to 2021. Data was then filtered down to bathrooms from 1 to 5 and bedrooms from 1 to 6.  House size, acreage, and population were not filtered because they did not have the same severity of outliers.

This data was the split assigning our X variables (or independent variables) and y (or independent variable). X: "bed", "bath", "house_size", "acre_lot", and “population.” And Y: “price.” Unneeded columns were dropped to help better organize the data for the model.

This model choice was done due to seeking a continuous variable (price) and due to its ease of use for this type of dataset. 

#### Samantha ("X Role" - Presentation: Google Slides, Tableau)

- Our dataset shifted again, as our machine learning helped us determine that we needed different features to predict what we wanted. So I updated our preprocessing of the data to account for this.
  - Old dataset was removed
  - New dataset (housing_df) was brought in
    - All states except New York & Tennessee were dropped
    - Null values were dropped (which ended up taking Tennessee out of the running)
  - Finalized connection to send all cleaned tables to SQL for Carissa to perform the joins to add population to our other tables
- Link to Google Slides - https://docs.google.com/presentation/d/11Tf7v4oRidKV-GZeAAdPQEV9g4EOvP3EDE6pFsY-53w/edit?usp=sharing
- Tableau Dashboard has been created and added to index.html (visible from github pages deployment)
  - Six charts depicting: # of bathrooms, # of bedrooms, # of houses by square footage, Acreage grouping, average features by sell date, and average prices by zip code

#### Carissa
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

#### Sara

For this segment, I am taking on the circle role. The task for this role consists of presenting three images to use in the presentation and dashboard. I have used Tableau to create graphs that analyze average house size, acre lot, and price in each city for the years 2019, 2020, and 2021. These graphs are meant to give an idea of what the typical house size, acre lot, and price is by each city and which cities have larger houses and higher house prices.

Size vs. Price 2019:
<img width="887" alt="size vs price 2019" src="https://user-images.githubusercontent.com/107032720/199873316-1b57f536-319e-4b3f-8bac-b3a345ff24ce.png">

Size vs. Price 2020:
<img width="890" alt="size vs price 2020" src="https://user-images.githubusercontent.com/107032720/199873394-3edb9860-b6ed-4998-b069-ff17f2a1e822.png">

Size vs. Price 2021:
<img width="1050" alt="size vs price 2021" src="https://user-images.githubusercontent.com/107032720/199873395-6cca20fc-bb04-4992-bf29-8a40363014b8.png">

## Third Segment

#### Brandon



#### Samantha (Triangle Role): Presentation

- Another dataset shift - switching from state population to a more focused city population. We decided to do 5 lower population and 5 higher to compare the housing prices that way.
  - I worked on collecting the lower population data: "urban_populations.csv" with the sources in the csv file since it came from all over
    - Carissa worked on the higher populations: "city_populations.csv"
  - Updated the preprocessing ipynb to reflect the newest dataset. The code still ends with sending the cleaned data to PostgreSQL for joins
    - The ML code will begin with connecting to the SQL database to pull the newly joined data directly into the Jupyter Notebook
    - Collaborative effort:
      - Carissa helped to make adjustments to the preprocessing so that the SQL joins would run smoothly and I added an additional dataframe that still kept all of the data from the state of New York for our analysis outside of the population aspect from the 10 chosen cities
- Updated the interactive Tableau dashboard - removed the "features by sell date" chart to keep it a little cleaner & rearranged to make the map more visually appealing
  - The charts that will provide more specific information, but will not be interactive, will be created by Sara and added to the Google Slides
- Updated our Google Slides to get us closer to our final presentation version
  - I created some of the images for the slideshow, adding them to the images folder on GitHub. Found images have been sourced in the slides directly
- I am working on a "Talking Points" guide in Microsoft Word to help add structure to our presentation and to provide points we want addressed, but don't want written in the slides themselves.
  - This will be updated as tasks are completed and the slides can finish being filled out with all of the necessary information
  - The team will discuss together which parts each member will be presenting

#### Carissa

During the third segment, we finalized our datasets. The data was scaled down to the city level of New York state. We used 5 urban cities (Nyack, Tuckahoe, Suffern, Stony Point, & Scarsdale) and 5 large cties (Brooklyn, Bronx, Staten Island, Queens & Yonkers). The data was preprocessed and the following tables were created using Python with Jupyter Notebook then exported to pgadmin:

1. housing
2. urban_populations
3. city_populations
4. housing_without_join

Once tables were in pgadmin, using PostgreSQL, an INNER JOIN was performed for the city_populations + housing and the urban_populations + housing tables. Creating the following new tables:

1. housing_urban_pops
2. housing_city_pops

The following tables were then imported by using SQLalchemy into the Machine Learning environment in Jupyter Notebook.

1. housing
2. housing_without_join
3. housing_urban_pops
4. housing_city_pops

#### Sara



## Fourth Segment

#### Brandon



#### Samantha



#### Carissa



#### Sara


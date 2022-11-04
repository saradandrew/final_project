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
  - Does population have an impact on housing prices? (Machine-Learning Linear Regression Model  prediction)

## First Segment 

#### Brandon (Triangle Role): Machine Learning Mockup
- Our data for this project was found on Kaggle.com. https://www.kaggle.com/datasets/alexandrepetit881234/us-population-by-state https://www.kaggle.com/datasets/robikscube/zillow-home-value-index https://www.kaggle.com/datasets/maedemaftouni/real-estate-market-trends
- This data was used to create CSV files that filter down to New York real estate data. The population from 2019 to 2021 was collected to be used to predict the effect that population has on housing prices.
- Basic economic principle is that supply and demand assign price. Generally speaking, the supply of houses is relatively fixed (since it takes time to build houses. So the other way to quickly impact price is to change demand. During the pandemic, several states saw a mass exodus or arrival into states (think Californians leaving for Texas). The logic being applied here is, do we see a drop in price in the states that had a decrease in population, and did we see an increase in price where populations increased.
- To accomplish this, we are aiming to use a linear regression using median square feet, number of listings, days on the market, population, and other pending variables to finally predict price.
- The model will look at the statistical significance of each variable and we will be training the model to better fit the data to help understand what factors the changes in state populations may have moving forward on those states by starting with predicted housing prices.
- A mockup model has been created with the data frames that were cleaned by Samantha. These were filtered down to the five states we are focusing on for this project. The data had also been scaled and then split into testing and training data, so the model is able to predict the prices of housing in each state.

#### Samantha (X Role): Presentation/Data Preprocessing 
- Technologies were discussed amongst the group and typed up in a markdown format. It will be updated if needed as we progess through the project.
- Data preprocessing has been done (cleaned, encoded, scaled data, added preliminary sql connection coding)
  - Each TM will need to create a config.py to run the full code on their individual computers
- An index.html rough outline has been created to get us an idea of how our data will be displayed for the final presentation
  - Google Slides & Interactive Tableau Dashboard will be embedded here
- Next steps discussed by the team will be to import tables into PostgreSQL to join population data into housing prices data to use with our ML model
  - Possibly splitting the data into separate states for separate ML models

#### Carissa (Circle Role): Database
- During the first segment of the project , the circle role is in charge of the mockup database. For our database, we will be using PostgreSQL by use of pgAdmin. The image below, ERD, represents the tables of data that are uploaded onto the database in Postgres. It was a helpful reference while importing data into the database.
All tables include data from 2019-2021 for the state of New York:
1.	State Population 2019
2.	State Population 2020
3.	State Population 2021
4.	Realtor Data

![image](https://user-images.githubusercontent.com/101649525/199379775-03f63bdc-eadc-42e5-affc-6f70386e065d.png)

#### Sara (Square Role): GitHub/ Communication Protocols
- Slack: We will be using Slack as our group messaging platform to ask questions and share findings and resources.
- GitHub: We'll use GitHub to document updates and track individual contributions by uploading into our designated branches.
- Zoom: Our group will be utilizing class Zoom time to further brainstorm and ask for assistance if we run into any walls while completing our individual tasks.

## Second Segment 

#### Brandon


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
During the second segemnt, we decided on our final datasets. The data was cleaned and the following tables were created using Python with Jupyter Notebook then exported to SQL:

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



## Third Segment

#### Brandon



#### Samantha



#### Carissa



#### Sara



## Fourth Segment


#### Brandon



#### Samantha



#### Carissa



#### Sara


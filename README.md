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

## Third Segment

#### Samantha (Triangle Role): Presentation

- Another dataset shift - switching from state population to a more focused city population. We decided to do 5 lower population and 5 higher to compare the housing prices that way.
  - I worked on collecting the lower population data: "urban_populations.csv" with the sources in the csv file since it came from all over
    - Carissa worked on the higher populations: "city_populations.csv"
  - Updated the preprocessing ipynb to reflect the newest dataset. The code still ends with sending the cleaned data to PostgreSQL for joins
    - The ML code will begin with connecting to the SQL database to pull the newly joined data directly into the Jupyter Notebook
    - Collaborative effort:
      - Carissa helped to make adjustments to the preprocessing so that the SQL joins would run smoothly and I added an additional dataframe that still kept all of the data from the state of New York for our analysis outside of the population aspect from the 10 chosen cities
- Updated the interactive Tableau dashboard - swapped it out with Sara's dashboard to highlight the result charts over the analysis charts
  - Saved my charts as png files and added them directly to the Google Slides instead
- Updated our Google Slides to get us closer to our final presentation version
  - I created some of the images for the slideshow, adding them to the images folder on GitHub. Found images have been sourced in the slides directly
- I am working on a "Talking Points" guide in Microsoft Word to help add structure to our presentation and to provide points we want addressed, but don't want written in the slides themselves.
  - This will be updated as tasks are completed and the slides can finish being filled out with all of the necessary information
  - The team will discuss together which parts each member will be presenting

## Fourth Segment

#### Samantha


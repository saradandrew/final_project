# Does population have an impact on housing prices?
Google Slides & Interactive Tableau Dashboard [here](https://saradandrew.github.io/final_project/).
#### Project Description
For our analysis, we looked at the real estate data in New York through the covid-19 pandemic, years 2019 - 2021, to find the relationship between housing prices and population. 
#### The Data
Data (CSV format): 
- USA Real Estate Dataset, targeted to New York state  (Kaggle)
- City Population data  (5 higher populated and 5 lower populated cities) from census and state specific websites
#### Technologies, Languages, Tools, and Algorithms
- We used Python for coding
    - Pandas and Sci-Kit learn was used for preprocessing our data and Machine learning (linear regression model)
    - SciPy for statistical analysis
- PostgreSQL is the database host
    - SQLAlchemy library was used to connect to our Python ML code
- Matplotlib, Seaborn & Tableau were used for visualizations
#### Reason for Topic Selection
In searching for data to analyze with a machine learning model, we became curious about how the pandemic could have impacted housing prices.
#### Research Questions to Answer
1. Was there an affect on housing prices and populations due to the covid-19 pandemic?
2. Does the number of bedrooms matter? What about bathrooms? Square footage? Size of the acre lot?
3. Does population have an impact on housing prices? (Machine-Learning Linear Regression Model prediction)
#### Data Exploration
Upon viewing the raw data, it became clear that we wanted to focus solely on the state of New York. There was tons of data in varying population sizes and it is a popular city that people love to move to; however, it could have had to leave due to the pandemic.

We found data, including housing features, to help determine which factors effect the cost of a house: 
- bedrooms
- bathrooms
- acreage
- square footage
#### Analysis Phase
We joined our population and housing data to create two separate tables, which allow us to compare the low populations with housing features, as well as, high populations with housing features. This allows us to create a machine learning model to predict the housing prices in two very different communities.

![image](https://user-images.githubusercontent.com/101649525/201794598-78dd1dfb-f029-4a52-8a3b-eca45f8d69cb.png)

## Machine Learning Model 
#### Data Preprocessing 
- Dropped unnecessary columns, null & duplicate values
- Filtered housing data to only show January 2019 - December 2021
- Removed commas to ensure all numbers are formatted the same
- Converted all feature data to integer format
- Removed bedroom and bathroom outliers which skewed the data
#### Feature Engineering & Selection
- Features:
    - Bedrooms
    - Bathrooms
    - Square Footage (house_size)
    - Acreage
    - Populations 2019-2021
    - Change in Populations 2019-2020 and 2020-2021
- Target: Price

![image](https://user-images.githubusercontent.com/101649525/201795144-cd511a19-2893-46db-b562-f1d2cc7170bf.png)

#### Splitting the Data
- 50% Training
- 50% Testing

Our low population datasets were smaller than our high population datasets, so we wanted to have more balance within our model
#### Model Choice: Linear Regression Model
- Limitations of the model choice:
    - Really only works in straight line relationships
    - Does not help understand causation
    - Sensitive to outliers
    - Sensitive to overfitting
- Benefits of model choice
    - Straightforward
    - Most efficient when the relationship between X and the mean of Y is linear
#### Model Changes
- Split data into high and low population (city vs urban)
- Changed from the population of all of New York to the 10 chosen cities
- Added change in population between the years
#### Model Training
- First trained the model without filtering outliers - R2 values were all 47%
- Then re-trained the model after filtering bedroom and bathroom outliers, giving us higher R2 values (accuracy)
    - 50% City
    - 77% Urban
#### How much does each feature impact the house price?

![image](https://user-images.githubusercontent.com/101649525/201802015-0a572dcc-21bc-4f6d-81e3-b8e2d11cfd47.png)

 Results show as expected for the traditional factors of a house: high populations show a weak impact. Low populations show the opposite of expected, this points to the inaccuracy of our model. However, the change in population from 2019 does show a decrease in price in high populations and an increase in price for low populations. The inverse is seen for 2020. This supports the idea of people leaving larger cities during the height of the pandemic and having to return to them once offices were no longer offering remote work.
## Results
#### Was there an effect on housing prices and populations due to the covid-19 pandemic?

![image](https://user-images.githubusercontent.com/101649525/201800793-950aa338-2794-4826-afdb-2558df650654.png)

`high population cities`: All of the cities had a population spike in 2020 followed by a small drop in 2021. It appears as though Queens and Staten Island had price drops after 2020. There does not seem to be a pattern or correlation between housing prices and population between 2019 and 2021.

`low population cities`: There were a few minor increases in population in Stony Point, Suffern, and Tuckahoe. Our dataset only had housing price data from all 3 years for Nyack and Scarsdale. All we are able to determine is that housing prices dropped in these 2 cities from 2020 to 2021, but we are unable to determine if it’s related to the pandemic.

#### Does the number of bedrooms affect the price of the house?

![image](https://user-images.githubusercontent.com/101649525/201800871-f14efe08-fcac-49b7-9f63-7a330c8685aa.png)

`high population cities`: does not appear so

`low population cities`: yes, especially when the number of bedrooms exceeds 5

#### Does the number of bathrooms affect the price of the house?

![image](https://user-images.githubusercontent.com/101649525/201800981-9f060d40-d156-43d9-a8a2-2edf638883ec.png)

`high population cities`: does not appear so

`low population cities`: somewhat, especially when the number of bathrooms exceeds 5

#### Does the house's square footage affect the price?

![image](https://user-images.githubusercontent.com/101649525/201801054-19e37fa8-e15f-4968-8159-4df396db345d.png)

`high population cities`: does not appear so

`low population cities`: yes, especially when the square footage exceeds 4,000 sq.ft.

#### Does the house's acre lot size affect the price?

![image](https://user-images.githubusercontent.com/101649525/201801169-ee71c5c8-762f-4752-9d33-cfcacc6f6521.png)

`high population cities`: does not appear so

`low population cities`: does not appear so
## Summary
### Does population have an impact on housing prices?

![image](https://user-images.githubusercontent.com/101649525/202060733-16a0084e-c73f-4c8d-af55-95b207d9ea42.png)

![image](https://user-images.githubusercontent.com/101649525/202060884-c2e2a883-4c12-4235-acb5-0ae35c409e37.png)
Population alone does not have an impact on housing prices. Adding features such as number of bedrooms and bathrooms, square footage, and acreage help to provide more accuracy, but more features are needed to be able to predict housing prices.
#### Recommendation for Future Analysis
- Find more features to make the model more accurate
- Find better ways to evaluate location
    - Get more specific (focus on one city or zip code at a time)
    - Crime rate
    - School ratings/quality
    - Job opportunities
#### What We Would Have Done Differently 
Ideally, we would have liked to have more detailed data narrowed down to specific zipcodes, preferably ones in which we reside, during 2019- 2021. Also, we would have liked to had gotten a higher accuracy level with our machine learning model, which we feel could be done by using our above recommendations.

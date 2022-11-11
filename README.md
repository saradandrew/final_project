# final_project
Final Project

## Project Method

Our data for this project was found on Kaggle.com.
https://www.kaggle.com/datasets/alexandrepetit881234/us-population-by-state
https://www.kaggle.com/datasets/robikscube/zillow-home-value-index
https://www.kaggle.com/datasets/maedemaftouni/real-estate-market-trends

This data was used to create CSV files that filter down to New York real estate data. Then the poplation from 2019 to 2021 was collected to be used in order to predict the effect that poplulation has on housing prices 

Basic economic principle is that supply and demand assign price. Generally speaking, the supply of houses is relativly fixed (since it takes time to build houses. So the other way to quickly impact price is to change demand. During the pandemic, several states saw a mass exodus or arrival into states (think Californians leaving for Texas). The logic being applied here is, do we see a drop in price in the states that had a decrease in population and did we see an increase in price where populations increased. 

## Data Method
To accomplish this, we are aiming to use a linear regresission using price, number of bedrooms, number of bathrooms, acreage, and house size to finally predict price. 

The model will look at the statistical significance of each variable and we will be training the model to better fit the data to help understand what factors the changes in state populations may have moving forward on those states by starting with predicted housing prices. 

A mock up model has been created with the dataframes that were cleaned by Samantha and Carissa. We filtered down the data to control for outliers The cut off was at 6 or less bedrooms and 5 or less bathrooms. We then chose 10 cities. 5 that were more urban areas and 4 that were more rural areas. To even better conmpare, we felt it best to divide by higher and lower populations within those subsets listed before.

The cleaned data will be used to create a linear regression model so we can split the data into train and test models for the x and y variables. 


## Project Progress
After working on the project, we decided it would be better to have 2 seperate models. The first model has the variables listed above. And the second model has those as well as a machine feature to include the change in population from 2019 to 2020 as well as the change from 2020 to 2021. This was done to answer the specfic question of if change in populatuion (people moving due to COVID) had ay impact on housing prices. 

We also divided the models by rural and urban areas. Those were further divided to higher and lower populations within the rural vs urban division. 

##Results 
We ran a 50/50 split and our results found good p-values. 

But our r squared values were not as high as we would have liked. Both city models came out to 48% and both urban models came to 77% 

##Findings 
This shows us that the change in population does have some impact (based on the p-values) but does not appear to be the leading impact (or even a large impact) on the sudden increase in house price we saw during the pandemic. 

To better strengthen this model in the future, we would recommend finding ways to use variables like crime rate, school rate, job opprotunity, and possibly others to better evaluate the different markets. 

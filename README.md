# final_project
Final Project

## Project Method

Our data for this project was found on Kaggle.com.
https://www.kaggle.com/datasets/alexandrepetit881234/us-population-by-state
https://www.kaggle.com/datasets/robikscube/zillow-home-value-index
https://www.kaggle.com/datasets/maedemaftouni/real-estate-market-trends

This data was used to create CSV files that filter down to five states (California, Florida, New York, Tennessee, and Texas). Then the poplations of these states from 2019 to 2021 was collected to be used in order to predict the effect that poplulation has on housing prices 

Basic economic principle is that supply and demand assign price. Generally speaking, the supply of houses is relativly fixed (since it takes time to build houses. So the other way to quickly impact price is to change demand. During the pandemic, several states saw a mass exodus or arrival into states (think Californians leaving for Texas). The logic being applied here is, do we see a drop in price in the states that had a decrease in population and did we see an increase in price where populations increased. 

To accomplish this, we are aiming to use a linear regresission using median square feet, number of listings, days on the market, population, and other pending variables to finally predict price. 

The model will look at the statistical significance of each variable and we will be training the model to better fit the data to help understand what factors the changes in state populations may have moving forward on those states by starting with predicted housing prices. 

A mock up model has been created with the dataframes that were cleaned by Samantha. These were filtered down to the five states we are focusing on for this project. The data had also been scaled and then split into testing and training data so the model is able to predict the prices of housing in each state. 

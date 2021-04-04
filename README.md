# Selected topic

For the purpose of this project, we have decided to analyze diabetes and it's associated risk factors. 

# Reason we selected this topic

We decided to analyze data pertaining to diabetes because we are interested in learning which risk factors are most effective in predicting a diabetes diagnosis. For this analysis, we found data for the following risk factors: Age, Body Mass Index (BMI), Education, Ethnicity, Exercise, Fast Food, Gyms, Hypertension, Income, Sex, and Tobacco Use. 

# Source of data

For each of the features relating to diabetes risk factors, we were able to pull data directly from the cdc.gov website. For each feature we want to analyze, we pulled data for the years 2000 through 2019. We also pulled gym data from statista.com and fast food data from a Kaggle dataset.

# Questions we hope to answer with the data
Primarily, we want to know which risk factors have the strongest correlation to diabetes so we can add these features to our machine learning model and find out whether or not they are a good predictor.

We are also interested in doing secondary analysis on the gym, fast food, and BMI data to see what kind of correlation there is. 

## Visualizations
Visualizations for the machine learning analysis were done in Python/Jupyter Notebook. Visualizations correlating features for the machine learning analysis were also done in Tableau. Visualizations comparing obesity, gyms and restaurants per captia were completed in Tableau. 
Screenshots are here: https://docs.google.com/presentation/d/1x6rKplWhXvLhmRE-Nq8vVQS1ZSTw0tYrL8jAP8YB5nE/edit#slide=id.gce2da4b49a_0_141

### Data sources for visualization
 - Obesity by state (2019, insufficient data for NJ)
 - Diabetes by state (2020)
 - Fast food Restaurants (2018)
 - Gyms by state (2016)

### Calculated fields
 - obesity/capita
 - diabetes/capita
 - restaurants/captia
 Calculations located in csvs_for_tableau.ipynb file.

# Presentation

## Diabetes

This topic was chosen because many Americans are affected by diabetes in some form, and the ability to predict whether or not someone has it based on a few factors is valuable information to help understand the disease. 

Primarily, our biggest question is "Which risk factor is the strongest predictor of diabetes?" We want to know which ones correlate the strongest so we can add these features to our machine learning model and find out whether or not they are a good predictor. We also want to see how each of these risk factors correlate with each other, independent of diabetes.

According to “Factors that could explain the increasing prevalence of type 2 diabetes among adults in a Canadian province: a critical review and analysis,” some factors that contribute to diabetes are: Glucose levels, High blood pressure, Skin thickness, Insulin levels, BMI, Family history of diabetes, Age, and Number of pregnancies. 

After running models on this dataset, we also wanted to see any correlations with the number of fast food restaurants and gyms in the region

## Source of data 
![data_sources.png](Resources/Images/data_sources.png)

Primarily, our biggest question is "Which risk factor is the strongest predictor of diabetes?" We want to know which ones correlate the strongest so we can add these features to our machine learning model and find out whether or not they are a good predictor. We also want to see how each of these risk factors correlate with each other, independent of diabetes.

Finding Data:

* Initial data found on CDC website (see ‘Lessons Learned’ for more info)
* Found data regarding # of gyms and fast food restaurants in US by state on various websites
* Needed to find other datasets to be able to join CDC data and gym/restaurant data (i.e. BMI data)
* After throwing out CDC data, found diabetes dataset on Kaggle

Cleaning Steps:

* Load all data sources into Jupyter Notebook as Pandas dataframes
* Check for null values 
* If any, delete rows
* Ensure data types are consistent, especially for numerical data
* Ensure columns with “State” information are in the same format
* Delete unnecessary columns
* Export to CSV 

![data_exploration.png](Resources/Images/data_exploration.png)

# Machine Learning Model

Luckily, for our model, we had a pretty clean dataset to work with (diabetes.csv). Our main question when beginning this project was "What risk factors are the strongest indicators of diabetes?" So we decided to use each of the risk factors as the features of the model and running them against the outcome. 

There was data on 768 subjects so we had 768 rows of data. We decided to train the model with the first 650 subjects, while using the remaining 118 subjects to test the model. 

As a group, we decided to use a Linear Regression model. Linear Regression is a machine learning algorithm based on supervised learning. It performs a regression task. Regression models are target prediction value based on independent variables. It is mostly used for finding the relationship between variables and forecasting. This is the model we chose to use, while realizing it has its own advantages and disadvantages. We decided to use this model, ultimately, because the risk factors typically have a linear relationship with each other.

The main advantages of using linear regression is that it is easy to interpet the output coefficients and when you know the relationship between the independent and dependent variables have a linear relationship, it is the correct model to use because it's less complex than other models. While these advantages are great, there are limitations to this model, as well. For one, outliers can have a big effect on the regression model. Secondarily, the model automatically assumes there is a linear relationship present, which can be a problem if you don't know there is a relationship already. 


# Database
* Database stores static data for use during the project
* Database interfaces with the project by connecting with our machine learning model
![ER_diagram.png](Resources/Images/ER_diagram.png)
![sql_queries_used.png](Resources/Images/sql_queries_used.png)

![database_connection.png](Resources/Images/database_connection.png)

# Dashboard
* Description of the tool(s) that will be used to create final dashboard
* Description of interactive element(s)

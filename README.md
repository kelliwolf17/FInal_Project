# Group 10 Final Project - Predicting Diabetes

# Overview

This repo fulfills the requirements for the final project for the Data Analytics & Visualization Bootcamp. The team was able to extract data from online sources, clean the data to increase usability, and then determine relationships from this data.  

The model we created is intended to be able to predict whether a patient has diabetes. This topic was chosen because many Americans are affected by diabetes in some form, and the ability to predict whether or not someone has it based on a few factors is valuable information to help understand the disease. 

Primarily, our biggest question was regarding which risk factor is the strongest predictor of diabetes. We want to know which ones correlate the strongest so we can add these features to our machine learning model and find out whether or not they are a good predictor. We also want to see how each of these risk factors correlate with each other, independent of diabetes.

According to “Factors that could explain the increasing prevalence of type 2 diabetes among adults in a Canadian province: a critical review and analysis,” some factors that contribute to diabetes are: Glucose levels, High blood pressure, Skin thickness, Insulin levels, BMI, Family history of diabetes, Age, and Number of pregnancies. 

After running models on this dataset, we also wanted to see any correlations with the number of fast food restaurants and gyms in the region.
## Related files
- Presentation: https://docs.google.com/presentation/d/1x6rKplWhXvLhmRE-Nq8vVQS1ZSTw0tYrL8jAP8YB5nE/edit#slide=id.gcc1bccc427_0_4
- Dashboard: https://public.tableau.com/profile/jennifer1946#!/vizhome/DiabetesFinalProjectDashboard/DiabetesStory?publish=yes
- Machine learning file: seg2_ml_model.ipynb
- Content for Tableau: csvs_for_tableau
- Resources folder contains all CSV files


## Data Sources 

Our first question was determining which risk factor is the strongest predictor of diabetes. We wanted to know which ones correlate the strongest so we can add these features to our machine learning model and find out whether or not they are a good predictor. We also wanted to see how each of these risk factors correlate with each other, independent of diabetes.

Initially data was found on the CDC website. The CDC puts out a survey every year called the Behavioral Risk Factor Surveillance System, and with this data, they are able to track many different factors about the health of the American population. Unfortunately, the data that can be exported to CSV is aggregated. The raw data is in a very complex ASCII that requires special software to analyze it that is not covered by this particular course. 

Once the CDC data was determined unusable, a diabetes dataset was found on Kaggle. This dataset covered a study on the Pima Native Americans. The women of the Pima tribe have a high rate of diabetes, and eventually the published data made its way onto Kaggle. In order to bolster our analysis, further datasets were found regarding the number of gyms, national and state parks, and fast food restaurants in the US as BMI (or obesity) is a strong indicator of diabetes. With this information we could determine how healthy certain cities are based on how many gyms and parks are available compared to the number of fast food restaurants. Any further datasets used were strictly for joining purposes.

![datasources](https://user-images.githubusercontent.com/71397190/114327899-93fbf380-9b00-11eb-95ef-b4b3390c96b2.PNG)

In order to clean the data, the individual CSV files were loaded into Pandas dataframes using Jupyter Notebook. We first checked for null values and, if any, deleted those rows. Then the datatypes were checked and changed to ensure consistency among each dataframe and for numerical data. Then any columns containing data regarding US States were changed to the same format. Then any unnecessary columns were deleted from each dataframe. Lastly, all the cleaned dataframes were exported to new CSV files.

![dataframes](https://user-images.githubusercontent.com/71397190/114333921-1986a000-9b0f-11eb-818b-f837f87efc5d.PNG)


# Database

The database used for this project is a MySQL database hosted on an AWS server. The clean CSV files were inserted into the database. 
* Database stores static data for use during the project
* Database interfaces with the project by connecting with our machine learning model

ER Diagram with 4 main data sources:

![ER_diagram.png](Resources/Images/ER_diagram.png)

SQL Queries used:

![sql_queries_used2.png](Resources/Images/sql_queries_used2.png)

Code used to connect database to Jupyter Notebook:
![database_connection.png](Resources/Images/database_connection.png)

# Machine Learning Model

The code for our model can be found in the file: seg3_ml_model.ipynb. Luckily, for our model, we had a pretty clean dataset to work with (diabetes.csv), 
so there was very little pre-processing to take care of. 

Our main question when beginning this project was "What risk factors are the strongest indicators of diabetes?" Therefore, we decided to use each of the risk factors as the features of the model (X) and using the outcome as the Y (diabetes or no diabetes).

There was data on 768 subjects so we had 768 rows of data. We decided to train the model with 75% of the data, while using the remaining 25% to test the model (our testing set). The model uses the training set to learn from it then uses the testing dataset to assess the performance of the model. We split our data into training and testing data using the X_train, X_test, y_train, y_test module from sklearn.

We decided to use a logistic regression model because it primarily predicts binary outcomes (there are only two outcomes). In this case, the model will predict whether the subject has diabetes or does not have diabetes. It takes multiple variables to arrive at one of two destinations. It analyzes the available data, and when presented with new data, mathematically determines its probability of belonging to a class.

Benefits of Logistic Regression Models 
* It is easy to implement and interpret and is very efficient to train.
* It provides not only the measure of predictability, but also its direction of assocation (positive or negative).
* It is very fast at classifying unknown records
* It can interpret model coefficients as indicators of feature importance

Limitations of Logistic Regression Models
* It constructs linear boundaries
* There is an assumption of linearity between the dependent and independent variables.
* It is tough to obtain complex relationships using logistic regression. 

There was no change in model choice between Segment 2 and Segment 3.

We initially ran the model with all associated risk factors as features. The initial accuracy score was 77.6%. We noticed that Blood Pressure and SkinThickness were poor predictors, so we removed those features to re-train the model, thinking it would benefit the model and result in a more accurate model. As it turned out, removing these features actually made the model less accurate. Our most accurate model occurred after removing Insulin as a feature. While 78.13% is still a fairly accurate model, we do believe the model would achieve a higher score with a larger dataset.

The accuracy score compares the actual outcome values from the test set against the model's predicted values and reflects the percentage of predictions that are correct.

Our final accuracy score is 78.125% which shows that out of the 192 tested subjects, 150 of them were placed accurately into positive (1) or negative (0) for diabetes. The confusion matrix is below. This shows that:

109 of the subjects from our test data were predicted to be positive for diabetes and were actually positive.
28 of the subjects from our test data were predicted to be positive for diabetes, but were actually negative.
14 of the subjects from our test data were predicted to be negative for diabetes, but were actually positive.
41 of the subjects from our test data were predicted to be positive diabetes, and were actually negative.

![screenshot](https://user-images.githubusercontent.com/72076683/115126027-cc348380-9f91-11eb-999e-0ce660036e0f.png)

# Dashboard
We used Tableau as our main visualization tool and to build the dashboard for the final project. The dashboard has the option to toggle between different quartiles regarding fast food restaurants and gyms per capita, diabetes and BMI data. It also has the ability to filter by average BMI by state.

* Visualizations for the machine learning analysis were done in Python/Jupyter Notebook
* Visualizations correlating features for the machine learning analysis were done in Tableau 
* Visualizations comparing obesity, gyms and restaurants per captia were completed in Tableau 
* Link to dashboard: https://public.tableau.com/profile/jennifer1946#!/vizhome/DiabetesFinalProjectDashboard/DiabetesStory?publish=yes

## Calculated fields
- obesity/capita
- diabetes/capita
- restaurants/captia Calculations located in csvs_for_tableau.ipynb file.
## Binning
- To better show differences on the map, we binned the obesity/capita, restaurant/capita and gym/capita into bins based on quartiles from the describe() function. See tableau_bins jupyter notebook.

# Technologies Used
Matplotlib, Seaborn, Plotly, Scikit-Learn, My SQL, AWS, Tableau

# QA Analysis
### ETL
Testing(White Box Testing)/Notes
- Restart and Cleared Output
- No errors, once the code was executed from top to bottom
- The code is clean and provides thoughtful comments that help the evaluator understand what the code is doing
- The code is easy to follow

Corrections:
- N/A


### Machine Learning Model
Testing(White Box Testing)/Notes
- Restart and Cleared Output
- No errors, once the code was executed from top to bottom
- The database connection in the file returned data without a problem
- The join in the file correctly returned data from both clean_gym table and clean_restaurant table
- After multiple executions the ML model returns 77.6% accuracy
- Comments in the code are help and help explain what the code is doing
- The file is broken down in sections and it gives the reader a high level understanding of what the section of code does before diving into the code itself

Corrections:
- N/A


### Database Integration
Testing(White Box Testing)/Notes
- Seperate file created to test DB connection (testingMySQLDB.ipynd)
- When executing queries in the testingMySQLDB file no error was returned
- Appropriate tables are being returned when called in the query
- Comments are help explain the code

Corrections:
- N/A


### Dashboard
Testing(White Box Testing)
- When using the dashboard there was no failure
- All graphs and diagrams are correctly displayed
- Findings help understand the graphs

Corrections:
- N/A

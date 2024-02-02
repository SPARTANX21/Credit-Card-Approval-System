# Credit-Card-Approval-System

### Overview:
This repository contains the code and documentation for Project - Credit Card Approval by Pranay B Shah. The project aims to enhance credit risk assessment using machine learning techniques, thereby ensuring loans are granted to reliable individuals. By leveraging advanced data analysis and machine learning models, the project aims to streamline decision-making processes in credit card approval, reducing the risk of financial losses for banks and improving efficiency.

### Data Analysis (DA) Track:
#### Hypothesis:
1. **Pattern Identification**: The project hypothesizes that demographic factors such as age, gender, education level, and income may exhibit patterns correlating with credit card approval decisions.
2. **Feature Importance**: Key features like annual income, age, and employment duration are expected to be crucial in determining creditworthiness. Additionally, factors like gender and marital status may also play a role.
3. **Data Quality Impact**: Missing values in certain columns such as education and occupation may impact the analysis and need to be addressed through imputation or removal.

#### Data Analysis Approach:
The project employs Exploratory Data Analysis (EDA) techniques to understand the dataset thoroughly. This includes univariate and bivariate analysis, feature engineering techniques such as renaming columns, conversion of object type columns, and imputation. Visualization techniques like pie charts, bar charts, and scatter plots are used to explore relationships between various features and generate insights.

### Machine Learning (ML) Track:
#### Hypothesis:
1. **Model Performance**: Machine learning models trained on the dataset are expected to outperform traditional rule-based approaches in predicting credit card approval decisions.
2. **Feature Importance**: Features such as annual income, age, and education level are anticipated to be significant predictors of credit card approval.
3. **Model Justification**: The Random Forest model is expected to outperform other models due to its ability to capture complex relationships and handle non-linearities.

#### Method for Machine Learning Predictions for Credit Card Approval:
The repository includes implementations of various machine learning models for credit card approval predictions, including RandomForest Classifier, XGBoost, Logistic Regression, Support Vector Machines (SVM), and Decision Tree Classifier.

#### Model Comparison:
The performance of different machine learning models is compared based on accuracy scores. RandomForest outperforms other models, making it the preferred choice for credit card approval predictions.

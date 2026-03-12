# Customer Churn Prediction

## Project Overview
Customer churn occurs when customers stop using a company's services. 
Predicting churn helps businesses improve retention and reduce revenue loss.

This project analyzes telecom customer data and builds a machine learning 
model to predict which customers are likely to churn.

## Dataset Features

Some important features used:

- Tenure in Months
- Internet Service
- Contract Type
- Payment Method
- Monthly Charges
- Total Revenue

Target variable:
Customer Status (Churned or Stayed)

## Technologies Used

Python
Pandas
NumPy
Scikit-learn
Matplotlib
Seaborn

## Machine Learning Model

Random Forest Classifier

Steps performed:

1. Data cleaning
2. Exploratory data analysis
3. Feature encoding
4. Train-test split
5. Feature scaling
6. Model training
7. Hyperparameter tuning
8. Model evaluation

## Model Performance

Accuracy: ~85%

Evaluation metrics used:

- Confusion Matrix
- Classification Report
- ROC Curve

## Key Insights

Customers with month-to-month contracts are more likely to churn.

Higher monthly charges increase churn probability.

Customers using fiber optic internet showed higher churn rates.

## Project Workflow

Data → Preprocessing → EDA → Model Training → Evaluation → Prediction

## Future Improvements

- Try Gradient Boosting / XGBoost
- Deploy using Streamlit
- Build Power BI dashboard

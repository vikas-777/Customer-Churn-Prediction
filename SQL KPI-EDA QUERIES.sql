USE [Customer Churn Database];

-- KPI
SELECT COUNT(customer_id) as total_customers,
       SUM (CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS churned_customers,
	   SUM (CASE WHEN Customer_Status = 'Stayed' THEN 1 ELSE 0 END) AS stayed_customers,
	   SUM (CASE WHEN Customer_Status = 'Joined' THEN 1 ELSE 0 END) AS joined_customers,
	   CAST((SUM (CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) *100 / COUNT(customer_id)) AS decimal(10,2)) AS churn_rate
FROM customer_churn_analysis;

-- TOTAL MALE AND FEMALE
SELECT SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END) AS total_male,
       SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) AS total_Female
FROM customer_churn_analysis;

-- TOTAL MARRIED AND UNMARRIED
SELECT SUM(CASE WHEN Married = 'Yes' THEN 1 ELSE 0 END) AS Married,
       SUM(CASE WHEN Married = 'No' THEN 1 ELSE 0 END) AS Unmarried
FROM customer_churn_analysis
WHERE Customer_Status = 'Churned';

--TOP 3 CITIES THAT HAVE CHURNED CUSTOMERS
SELECT TOP 3 City,
      COUNT(city) AS city_wise_churned
FROM customer_churn_analysis
WHERE Customer_Status = 'Churned'
GROUP BY City
ORDER BY COUNT(City) DESC;

-- Age Wise Churned
SELECT Age_Group,
       COUNT(Age_Group) AS age_wise_churned
FROM customer_churn_analysis
WHERE Customer_Status = 'Churned'
GROUP BY Age_Group
ORDER BY Age_Group;

-- Tenure Wise Churned
SELECT Month_Group,
       COUNT(Month_Group) AS month_wise_churned
FROM customer_churn_analysis
WHERE Customer_Status = 'Churned'
GROUP BY Month_Group
ORDER BY Month_Group;


       

	  
# Food Delivery App Analysis
This repository contains code for analyzing restaurant data from Zomato. There are two files included in this repository: food_delivery_app_analysis.py and SQL Analysis.sql.

## Python Code:
The food_delivery_app_analysis.py file contains Python code for analyzing the restaurant data. Here are brief descriptions of the functions included in the file:
- **read_data(file_path)**: This function reads the restaurant data from a CSV file and returns a Pandas DataFrame.
- **top_voted_delivery_restaurants(df)**: This function takes a DataFrame of restaurant data and returns the top 5 most voted restaurants in the delivery category.
- **top_rated_delivery_restaurants(df, location)**: This function takes a DataFrame of restaurant data and a location, and returns the top 5 highly rated restaurants in the delivery category for that location.
- **compare_ratings_cheapest_most_expensive(df, location)**: This function takes a DataFrame of restaurant data and a location, and compares the ratings of the cheapest and most expensive restaurants in that location.
- **compare_online_order_votes(df)**: This function takes a DataFrame of restaurant data and compares the total votes of restaurants that provide online ordering services and those that don't.
- **restaurant_stats_by_type(df)*: This function takes a DataFrame of restaurant data and returns the number of restaurants, total votes, and average rating for each restaurant type.

## SQL Code:
The SQL Analysis.sql file contains SQL code for analyzing the restaurant data. Here are brief descriptions of the queries included in the file:
- **top_voted_delivery_restaurants**: This query returns the top 5 most voted restaurants in the delivery category.
- **top_rated_delivery_restaurants**: This query takes a location as input and returns the top 5 highly rated restaurants in the delivery category for that location.
- **compare_ratings_cheapest_most_expensive**: This query takes a location as input and compares the ratings of the cheapest and most expensive restaurants in that location.
- **compare_online_order_votes**: This query compares the total votes of restaurants that provide online ordering services and those that don't.
- **restaurant_stats_by_type**: This query returns the number of restaurants, total votes, and average rating for each restaurant type.

## Conclusion:
The Python code and SQL code in this repository provide various ways to analyze restaurant data from Zomato. By using these functions and queries, users can gain insights into the performance of restaurants based on factors such as ratings, votes, and online ordering services.





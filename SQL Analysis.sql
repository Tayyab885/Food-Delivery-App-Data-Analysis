-- Task#1: For a high-level overview of the hotels, provide us the top 5 most voted hotels in the delivery category.
SELECT name,
    votes,
    rating
FROM zomato
WHERE type = "Delivery"
ORDER BY votes DESC
LIMIT 5;

-- Task#2: The rating of a hotel is a key identifier in determining a restaurant’s performance. Hence for a particular location called Banashankari find out the top 5 highly rated hotels in the delivery category.
SELECT name,
    rating,
    location,
    type
FROM zomato
WHERE type = "Delivery" And location = "Banashankari"
ORDER BY rating DESC
LIMIT 5;

-- Task#3: Compare the ratings of the cheapest and most expensive hotels in Indiranagar.
SELECT MIN(rating) AS rating1, 
    MAX(rating) AS rating2
FROM zomato
WHERE location = 'Indiranagar' AND approx_cost = (SELECT MIN(approx_cost) FROM zomato WHERE location = 'Indiranagar')
OR location = 'Indiranagar' AND approx_cost = (SELECT MAX(approx_cost) FROM zomato WHERE location = 'Indiranagar');


-- Task#4: Online ordering of food has exponentially increased over time. Compare the total votes of restaurants that provide online ordering services and those who don’t provide online ordering service.
SELECT 
	SUM(votes) as total_votes,
    online_order
FROM zomato
GROUP BY online_order;

-- Task#5: Number of votes defines how much the customers are involved with the service provided by the restaurants For each Restaurant type, find out the number of restaurants, total votes, and average rating. Display the data with the highest votes on the top( if the first row of output is NA display the remaining rows).
SELECT type,
	count(name) as number_of_restaurants,
	sum(votes) as total_votes,
    AVG(rating) as avg_rating
FROM zomato
GROUP BY type
HAVING type != "NA"
ORDER By total_votes desc;

-- Task#6: What is the most liked dish of the most-voted restaurant on Zomato(as the restaurant has a tie-up with Zomato, the restaurant compulsorily provides online ordering and delivery facilities.
SELECT  t1.name, t2.dish_liked, t1.rating, t1.votes
FROM zomato t1
JOIN (
  SELECT id, dish_liked
  FROM zomato
  WHERE votes = (SELECT MAX(votes) FROM zomato)
) t2 ON t1.id = t2.id
WHERE t1.online_order = 'Yes' AND t1.book_table = 'Yes';


-- Task#7: To increase the maximum profit, Zomato is in need to expand its business. For doing so Zomato wants the list of the top 15 restaurants which have min 150 votes, have a rating greater than 3, and is currently not providing online ordering. Display the restaurants with highest votes on the top.

SELECT name,
	votes,
    rating,
    online_order
FROM zomato
WHERE votes >= 150 AND rating > 3 AND online_order = "No"
ORDER BY votes DESC
LIMIT 15;
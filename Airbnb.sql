SELECT * 
FROM Project2.dbo.listings;

-- Cleaning Data
-- Look at the price column
SELECT price 
FROM Project2.dbo.listings;

-- Extract the $ sign from the column
SELECT *, SUBSTRING(price, 2, 7) AS price_new
FROM Project2.dbo.listings;

-- Data insights
SELECT * 
FROM Project2.dbo.new_listings;

-- Mean of the listing prices
SELECT AVG(new_price) AS avg_price
FROM Project2.dbo.new_listings;

-- Price range
SELECT MAX(new_price) AS max_price, MIN(new_price) AS min_price
FROM Project2.dbo.new_listings;

-- Number of hosts in WA
SELECT COUNT(*) AS no_of_hosts
FROM Project2.dbo.new_listings;

-- Percentage of superhost
SELECT COUNT(host_is_superhost)/COUNT(*) *100 AS superhost_percentage
FROM Project2.dbo.new_listings;

-- Average rating scores and location scores
SELECT AVG(review_scores_rating) AS avg_raiting_scores, AVG(review_scores_location) AS avg_location_scores
FROM Project2.dbo.new_listings;


-- Percentage of each unique minimum_nights
SELECT minimum_nights, COUNT(*)/5904 *100
FROM Project2.dbo.new_listings
GROUP BY minimum_nights;

-- Percentage of each unique miximum_nights
SELECT maximum_nights, COUNT(*)/5904 *100
FROM Project2.dbo.new_listings
GROUP BY maximum_nights;
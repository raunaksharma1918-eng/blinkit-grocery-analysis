-- 1. Item type wise total sales
SELECT "Item Type", ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM blinkit_grocery_data
GROUP BY "Item Type"
ORDER BY total_sales DESC;

-- 2. Outlet type wise average rating
SELECT "Outlet Type", ROUND(AVG("Rating")::numeric, 2) AS avg_rating
FROM blinkit_grocery_data
GROUP BY "Outlet Type"
ORDER BY avg_rating DESC;

-- 3. Location tier wise sales
SELECT "Outlet Location Type", ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM blinkit_grocery_data
GROUP BY "Outlet Location Type"
ORDER BY total_sales DESC;

-- 4. Top 5 item types by sales
SELECT "Item Type", SUM("Sales") AS total_sales
FROM blinkit_grocery_data
GROUP BY "Item Type"
ORDER BY total_sales DESC
LIMIT 5;
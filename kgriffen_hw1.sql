-- Question 1 --
SELECT dest FROM flights 
ORDER BY distance DESC LIMIT 1

-- Question 2 --
-- What are the different numbers of engines in the planes table? 
SELECT engines from planes
GROUP BY engines
-- 1,2,3,4

SELECT MAX(seats) from planes
WHERE engines = 1
-- 16 is the max num of seats for single engine

SELECT model from planes
WHERE engines  = 1 and seats = 16

-- repeat this process for 2,3,4 engine


-- Question 3 --
SELECT COUNT(*) FROM flights

-- Question 4 --
SELECT carrier, COUNT(*) FROM flights
GROUP BY carrier

-- Question 5 --
SELECT carrier, COUNT(*) FROM flights
GROUP BY carrier
ORDER BY COUNT(*) DESC

-- Question 6 --
SELECT carrier, COUNT(*) FROM flights
GROUP BY carrier
ORDER BY COUNT(*) DESC
LIMIT 5

-- Question 7 --
SELECT carrier, COUNT(*) FROM flights
WHERE distance >= 1000
GROUP BY carrier
ORDER BY COUNT(*) DESC
LIMIT 5

-- Question 8 --
-- What are the top 5 carriers with the longest avg air times
SELECT carrier, AVG(air_time) FROM flights
WHERE air_time > 0 
GROUP BY carrier
ORDER BY AVG(air_time) DESC
LIMIT 5

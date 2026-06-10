
SELECT * 
FROM us_household_income;

SELECT * 
FROM income_statistics;

SELECT COUNT(id)
FROM us_household_income;

SELECT COUNT(id) 
FROM income_statistics;


#duplicate identification and removal 
SELECT id , COUNT(id)
FROM income_statistics
GROUP BY id 
HAVING COUNT(id)>1;  #no duplicates in income_statistics table

SELECT id , COUNT(id)
FROM us_household_income
GROUP BY id 
HAVING COUNT(id)>1;  # 7 duplicates in us_household_income 

SELECT * 
FROM (
	SELECT row_id, 
	id, 
	ROW_NUMBER() OVER(PARTITION BY id ORDER BY ID) row_num
	FROM us_household_income
	) duplicates
WHERE row_num>1;

DELETE FROM us_household_income
WHERE row_id IN (
	SELECT row_id
	FROM (
		SELECT row_id, 
		id, 
		ROW_NUMBER() OVER(PARTITION BY id ORDER BY ID) row_num
		FROM us_household_income
		) duplicates
	WHERE row_num>1);


#identification and standardization of string inconsistencies   
SELECT DISTINCT State_Name, COUNT(State_Name)
FROM us_household_income
GROUP BY State_name
ORDER BY COUNT(State_Name); # 1 spelling error identified

UPDATE us_household_income
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';

SELECT DISTINCT Type, COUNT(Type)
FROM us_household_income
GROUP BY Type
ORDER BY COUNT(Type); # 1 spelling error identified


UPDATE us_household_income
SET Type = 'Borough'
WHERE Type = 'Boroughs';



#missing value population
SELECT *
FROM us_household_income
WHERE Place IS NULL;

SELECT *
FROM us_household_income
WHERE County= 'Autauga County';

UPDATE us_household_income
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont'; 


#missing values that are not solvables
SELECT ALand, AWater
FROM us_household_income
WHERE ALand IS NULL OR ALand =' ' OR ALand = 0
AND AWater IS NULL OR AWater =' ' OR AWater = 0 ;

# identification of count of 0 values in key measure columns and assess if potential for bias exists
SELECT SUM(counts)
FROM( 
	SELECT State_Name,count(*) AS counts
	FROM income_statistics
	WHERE Mean = 0 
	OR Median = 0
	GROUP BY State_Name
    ) count_total; #315 key values missing


#impact calculation on analysis
SELECT SUM(counts2)
FROM( 
	SELECT State_Name,count(*) AS counts2
	FROM income_statistics
	GROUP BY State_Name
    ) count_total; # 32526 total values

#missing data 0.97%
SELECT Round(315/32526*100,2) AS missing_percentage;

SELECT * 
FROM income_statistics 
WHERE Mean = 0 
OR Median = 0;

#for analysis accuracy, 0 values in key measures are removed
DELETE FROM income_statistics
WHERE Mean = 0 
OR Median = 0; # 315 rows affected


#The average of the top 10 high-earning states 
SELECT ROUND(AVG(avg_mean),1) AS top_10_mean
FROM(
    SELECT s.State_Name,
		ROUND(AVG(Mean),1) AS avg_mean
	FROM income_statistics AS s
	JOIN us_household_income AS hi
		ON s.id=hi.id
	GROUP BY State_Name
	ORDER BY avg_mean DESC
	LIMIT 10) AS top; # values returned 84282.6


# The average of the top 10 low-earning states 
SELECT ROUND(AVG(avg_mean),1) AS bottom_10_mean
FROM (
	SELECT s.State_Name,
		ROUND(AVG(Mean),1) AS avg_mean
	FROM income_statistics AS s
	JOIN us_household_income AS hi
		ON s.id=hi.id
	GROUP BY State_Name
	ORDER BY avg_mean
	LIMIT 10) AS bottom; # valued returned 51579.2 
    


# Top 10 high-earning Cities 
SELECT
    hi.State_Name,
    hi.City,
    ROUND(AVG(s.Mean), 1) AS avg_mean
FROM income_statistics AS s
JOIN us_household_income AS hi
    ON s.id = hi.id
WHERE hi.State_Name IN (
    SELECT State_Name
    FROM (
        SELECT s.State_Name
        FROM income_statistics AS s
        JOIN us_household_income AS hi
            ON s.id = hi.id
        GROUP BY s.State_Name
        ORDER BY AVG(s.Mean) DESC
        LIMIT 10
    ) top_states
)
GROUP BY hi.State_Name, hi.City
ORDER BY avg_mean DESC
LIMIT 10;


# Top 10 low-earning Cities 
SELECT
    hi.State_Name,
    hi.City,
    ROUND(AVG(s.Mean), 1) AS avg_mean
FROM income_statistics AS s
JOIN us_household_income AS hi
    ON s.id = hi.id
WHERE hi.State_Name IN (
    SELECT State_Name
    FROM (
        SELECT s.State_Name
        FROM income_statistics AS s
        JOIN us_household_income AS hi
            ON s.id = hi.id
        GROUP BY s.State_Name
        ORDER BY AVG(s.Mean) 
        LIMIT 10
    ) bottom_states
)
GROUP BY hi.State_Name, hi.City
ORDER BY avg_mean ASC
LIMIT 10;

#What percentage of the household are earning more than 100.000
SELECT
AVG(
	CASE WHEN mean>100000 THEN 1.0  ELSE 0.0 END 
    ) * 100 as 100k_percentage 
FROM income_statistics; #13%

#which segment dominates the majority in percentages
SELECT 
	AVG(CASE WHEN mean >200000 THEN 1.0 ELSE 0.0 END)* 100 AS above_200k_percentage,
	AVG(CASE WHEN mean >100000 THEN 1.0 ELSE 0.0 END) * 100 AS above_100k_percentage,
    AVG(CASE WHEN mean <100000 THEN 1.0 ELSE 0.0 END) * 100 AS under_100k_percentage
FROM income_statistics; # the under 100k income dominates at 86% of the whole 


#interesting thing to look at maybe
SELECT 	AVG(mean) as average,
	AVG(CASE
		WHEN mean <= (SELECT AVG(mean) FROM income_statistics)THEN 1 ELSE 0 END) * 100 AS under_average_percentage,
	AVG(CASE
		WHEN mean > (SELECT AVG(mean) FROM income_statistics)THEN 1 ELSE 0 END) * 100 AS above_average_percentage, 
	(SELECT count(mean) from income_statistics WHERE mean >200000) as 200k_earners_count
FROM income_statistics;
/*the average income across whole dataset is concentrated around 67k and which represents 59% of the whole households
	but the households that earn above the average represent 41% and out of those only 15 earn over 200k 




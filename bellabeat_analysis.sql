-- Calculate num of users
SELECT 
	COUNT(DISTINCT Id)
FROM bellabeat.daily_activity;

-- Calculate the total num of days
SELECT 
	COUNT(DISTINCT ActivityDate) AS total_days
FROM bellabeat.daily_activity;

-- Calculate the Total and Average of total distance for all users
SELECT 
	ROUND(SUM(totaldistance), 2) AS total_distance,
	ROUND(AVG(totaldistance), 2) AS avg_distance
FROM bellabeat.daily_activity;

-- Calculate the total and average of total steps for all users
SELECT 
	SUM(TotalSteps) AS total_steps,
    ROUND(AVG(TotalSteps), 2) AS avg_steps
FROM bellabeat.daily_activity;

-- Calculate the total and average calories for all users
SELECT 
	SUM(calories) As total_calories,
    ROUND(AVG(calories), 2) AS avg_calories
FROM bellabeat.daily_activity;

-- Find the maximum and minimun steps of all users
SELECT
	Id,
    MAX(TotalSteps) AS max_steps,
    MIN(TotalSteps) AS min_steps
FROM bellabeat.daily_activity
GROUP BY Id
ORDER BY max_steps DESC;

-- Calaculate the num of days every user tracked the activity
SELECT
	Id,
    COUNT(ActivityDate) AS tracked_days
FROM bellabeat.daily_activity
GROUP BY Id
ORDER BY tracked_days;

-- Calculate the total number of Ids who tracked activity for 31 days
SELECT 
	COUNT(DISTINCT Id) AS total_ids
FROM (
    SELECT Id
    FROM bellabeat.daily_activity
    GROUP BY Id
    HAVING COUNT(DISTINCT ActivityDate) = 31
)AS subquery;

-- Find the days when most of the users were active
SELECT 
	day,
	COUNT(Id) AS num_id
FROM bellabeat.daily_activity
GROUP BY day 
ORDER BY num_id DESC;

-- Calculate the Calories burned vs the Intensity by user
SELECT
	Id,
    SUM(TotalSteps) as total_steps,
	SUM(VeryActiveMinutes) AS active_min,
    SUM(FairlyActiveMinutes) AS fair_min,
    SUM(LightlyActiveMinutes) AS light_min,
    SUM(SedentaryMinutes) AS sedentary_min,
    SUM(Calories) AS total_calories_burned
FROM bellabeat.daily_activity
GROUP BY Id
ORDER BY total_calories_burned DESC;

-- Find the most desired time for workout among users
SELECT 
	ActivityTime,
    SUM(Calories) AS total_calories_burned
FROM bellabeat.hourly_calories
GROUP BY ActivityTime;





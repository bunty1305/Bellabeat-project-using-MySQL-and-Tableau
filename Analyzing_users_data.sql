-- Calculating the number of users 
-- Tracking physical activity
SELECT 
	COUNT(DISTINCT  Id) AS user_tracking_activity,
    AVG(TotalDistance) AS avg_distance,
    AVG(TotalSteps) AS avg_steps,
    AVG(Calories) AS avg_calories
FROM bellabeat.daily_activity;

-- Tracking heartrate
SELECT 
	COUNT(DISTINCT Id) AS users_tracking_heartrate,
    AVG(Value) AS avg_heartrate,
    MAX(Value) AS max_heartrate,
    MIN(Value) AS min_heartrate
FROM bellabeat.heartrate_seconds;

-- Tracking Sleep
SELECT 
	COUNT(DISTINCT Id) AS users_tracking_sleep,
    AVG(TotalMinutesAsleep)/60 AS avg_hours_sleep,
    MAX(TotalMinutesAsleep)/60 AS max_hours_sleep,
    MIN(TotalMinutesAsleep)/60 AS min_hours_sleep,
    AVG(TotalTimeInBed)/60 AS avg_hrs_in_bed
FROM bellabeat.sleep_day;

-- Tracking Weight
SELECT 
	COUNT(DISTINCT Id) AS users_tracking_weight,
    AVG(WeightKg) AS avg_weight,
    MAX(WeightKg) AS max_weight,
    MIN(WeightKg) AS min_weight,
    AVG(Fat) AS avg_fat,
    MAX(Fat) AS max_fat,
    MIN(Fat) AS min_fat
FROM bellabeat.weight_loginfo
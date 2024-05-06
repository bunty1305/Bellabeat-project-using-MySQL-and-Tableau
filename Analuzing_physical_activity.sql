-- Calculating number of days each user tracked physical activity
SELECT
	DISTINCT Id,
    COUNT(ActivityDate) OVER (PARTITION BY Id) AS days_activity_recorded
FROM bellabeat.daily_activity
ORDER BY days_activity_recorded;

-- Calculating the average minutes of each active
SELECT 
	ROUND(AVG(VeryActiveMinutes), 2) AS avg_VeryActiveMinutes,
    ROUND(AVG(FairlyActiveMinutes), 2) AS avg_FairlyActiveMinutes,
    ROUND(AVG(LightlyActiveMinutes), 2) AS avg_LightlyActiveMinutes,
    ROUND(AVG(SedentaryMinutes), 2) AS avg_SedentaryMinutes
FROM bellabeat.daily_activity
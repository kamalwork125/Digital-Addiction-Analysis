CREATE DATABASE digital_adiction_db;
USE digital_adiction_db;
CREATE TABLE digital_adiction (
    user_id VARCHAR(10),
    age INT,
    gender VARCHAR(10),
    occupation VARCHAR(20),
    screen_time_hours FLOAT,
    social_media_hours FLOAT,
    gaming_hours FLOAT,
    work_study_hours FLOAT,
    sleep_hours FLOAT,
    phone_pickups INT,
    night_usage_hours FLOAT,
    mood_rating INT,
    eye_strain VARCHAR(5),
    stress_level VARCHAR(10),
    weekend_screen_time FLOAT
);
SELECT * FROM digital_addiction_study;
-- Q1)users with high screen time
SELECT COUNT(*) AS high_screen_users
FROM digital_addiction_study
WHERE screen_time_hours > 7;
-- Q2)Find the average daily screen time for each occupation (Student, Working, Freelancer).
SELECT occupation,
ROUND(AVG(screen_time_hours), 2) AS avg_screen_time_hours
FROM digital_addiction_study
GROUP BY occupation;
-- Q3: Find the average sleep hours of users who spend more than 2 hours per day on social media
SELECT ROUND(AVG(sleep_hours), 2) AS avg_sleep_hours
FROM digital_addiction_study
WHERE social_media_hours > 2;
-- Q4: Find the average gaming hours per day for each gender
SELECT gender,
    ROUND(AVG(gaming_hours), 2) AS avg_gaming_hours
FROM digital_addiction_study
GROUP BY gender;
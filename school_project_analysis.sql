-- Total students
SELECT COUNT(*) AS Frequncy FROM vw_student_full_data;

-- Average performance
SELECT AVG(Avg_Score) AS Average_Score FROM vw_student_full_data;

-- Gender distribution
SELECT Gender, COUNT(*) AS Gender FROM vw_student_full_data GROUP BY Gender;

SELECT School_ID, AVG(Avg_Score) AS Average_Performance_by_School
FROM vw_student_full_data
GROUP BY School_ID;

SELECT Study_Hours, AVG(Avg_Score) AS AVG_HOURS
FROM vw_student_full_data
GROUP BY Study_Hours;

SELECT Internet_Access, AVG(Avg_Score) AS AVG_Internet_Access
FROM vw_student_full_data
GROUP BY Internet_Access;

SELECT Attendance_Rate, AVG(Avg_Score) AS Attendance_Rate
FROM vw_student_full_data
GROUP BY Attendance_Rate;

-- Top students
SELECT TOP 10 *
FROM vw_student_full_data
ORDER BY Avg_Score DESC;

-- At-risk students
SELECT *
FROM vw_student_full_data
WHERE Avg_Score < 50 AND Attendance_Rate < 70;

-- High effort but low result
SELECT *
FROM vw_student_full_data
WHERE Study_Hours >= 4 AND Avg_Score < 50;
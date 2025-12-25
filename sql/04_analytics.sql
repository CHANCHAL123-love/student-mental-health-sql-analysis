-- 1. Mental health prevalence by course
SELECT
    course,
    COUNT(*) AS total_students,
    ROUND(AVG(depression_flag)::numeric, 2) AS depression_rate,
    ROUND(AVG(anxiety_flag)::numeric, 2) AS anxiety_rate,
    ROUND(AVG(panic_attack_flag)::numeric, 2) AS panic_rate
FROM student_mental_health_clean
GROUP BY course
HAVING COUNT(*) >= 5
ORDER BY depression_rate DESC;

-- 2. Mental health trends by CGPA
SELECT
    cgpa_range,
    COUNT(*) AS students,
    ROUND(AVG(depression_flag)::numeric, 2) AS depression_rate
FROM student_mental_health_clean
GROUP BY cgpa_range
ORDER BY cgpa_range;

-- 3. Impact of year of study
SELECT
    year_of_study,
    ROUND(AVG(depression_flag)::numeric, 2) AS depression_rate,
    ROUND(AVG(anxiety_flag)::numeric, 2) AS anxiety_rate
FROM student_mental_health_clean
GROUP BY year_of_study
ORDER BY depression_rate DESC;



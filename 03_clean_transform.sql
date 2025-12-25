DROP TABLE IF EXISTS student_mental_health_clean;

CREATE TABLE student_mental_health_clean AS
SELECT
    survey_timestamp,
    gender,
    age,
    course,
    year_of_study,
    cgpa_range,
    marital_status,
    CASE WHEN depression = 'Yes' THEN 1 ELSE 0 END AS depression_flag,
    CASE WHEN anxiety = 'Yes' THEN 1 ELSE 0 END AS anxiety_flag,
    CASE WHEN panic_attack = 'Yes' THEN 1 ELSE 0 END AS panic_attack_flag,
    CASE WHEN sought_treatment = 'Yes' THEN 1 ELSE 0 END AS treatment_flag
FROM student_mental_health_raw
WHERE age IS NOT NULL;

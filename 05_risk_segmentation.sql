WITH risk_scores AS (
    SELECT *,
           (depression_flag + anxiety_flag + panic_attack_flag) AS risk_score
    FROM student_mental_health_clean
),
ranked_students AS (
    SELECT *,
           NTILE(5) OVER (ORDER BY risk_score DESC) AS risk_bucket
    FROM risk_scores
)
SELECT
    gender,
    age,
    course,
    year_of_study,
    cgpa_range,
    risk_score
FROM ranked_students
WHERE risk_bucket = 1
ORDER BY risk_score DESC;




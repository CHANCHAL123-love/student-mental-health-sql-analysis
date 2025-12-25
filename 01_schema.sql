DROP TABLE IF EXISTS student_mental_health_raw;

CREATE TABLE student_mental_health_raw (
    survey_timestamp TIMESTAMP,
    gender TEXT,
    age INT,
    course TEXT,
    year_of_study TEXT,
    cgpa_range TEXT,
    marital_status TEXT,
    depression TEXT,
    anxiety TEXT,
    panic_attack TEXT,
    sought_treatment TEXT
);

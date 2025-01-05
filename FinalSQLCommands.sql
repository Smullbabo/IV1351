


CREATE VIEW no_of_siblings AS
SELECT 
    sibling_count, 
    COUNT(*) AS "No of Students"
FROM (
    SELECT 
        s.student_id,
        COUNT(ss.student_id2) AS sibling_count
    FROM 
        student s
    LEFT JOIN siblings ss 
        ON s.student_id = ss.student_id1
    GROUP BY 
        s.student_id
) AS student_sibling_counts
GROUP BY 
    sibling_count
ORDER BY 
    sibling_count;

View siblings.



---------------------------------------------------------------------------------------------------------------------------------




CREATE VIEW lessons_per_month AS
SELECT 
    TO_CHAR(l.time, 'Mon') AS month,
    COUNT(l.lesson_id) AS "Total Lessons",
    COUNT(CASE WHEN l.minStudents = 1 THEN 1 END) AS "Individual Lessons",
    COUNT(CASE WHEN l.minStudents > 1 AND l.minStudents < 8 THEN 1 END) AS "Group Lessons",
    COUNT(CASE WHEN l.minStudents >= 8 THEN 1 END) AS "Ensemble Lessons"
FROM 
    lesson l
WHERE 
    EXTRACT(YEAR FROM l.time) = 2024
GROUP BY 
    TO_CHAR(l.time, 'Mon'), EXTRACT(YEAR FROM l.time)
ORDER BY 
    EXTRACT(YEAR FROM l.time), TO_CHAR(l.time, 'Mon');





View lessons per month




---------------------------------------------------------------------------------------------------------------------------------





CREATE VIEW lesson_check AS
SELECT
    i.instructor_id AS "Instructor Id",
    i.name AS "First Name",
    COUNT(l.lesson_id) AS "No of Lessons"
FROM
    instructor i
JOIN
    lesson l ON i.instructor_id = l.instructor_id
WHERE
    EXTRACT(MONTH FROM l.time) = EXTRACT(MONTH FROM CURRENT_DATE)
    AND EXTRACT(YEAR FROM l.time) = EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY
    i.instructor_id, i.name
HAVING
    COUNT(l.lesson_id) > 1
ORDER BY
    "No of Lessons" DESC;

check if anyone has held more than SPECIFIED NUMBER lessons for a month


---------------------------------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW ensemble_seat_availability AS
SELECT
    TO_CHAR(l.time, 'Day') AS "Day",
    l.genre AS "Genre",
    CASE
        WHEN COUNT(ls.student_id) >= l.maxStudent THEN 'No Seats'
        WHEN COUNT(ls.student_id) >= l.maxStudent - 2 THEN '1 or 2 Seats'
        ELSE 'Many Seats'
    END AS "No of Free Seats"
FROM
    lesson l
LEFT JOIN lesson_student ls ON l.lesson_id = ls.lesson_id
WHERE
    EXTRACT(WEEK FROM l.time) = EXTRACT(WEEK FROM CURRENT_DATE) + 1
    AND l.minStudents = 8
GROUP BY
    l.lesson_id
ORDER BY
    l.genre, TO_CHAR(l.time, 'Day');
Task 4



---------------------------------------------------------------------------------------------------------------------------------

VACUUM ANALYZE;

EXPLAIN SELECT
    TO_CHAR(l.time, 'Day') AS "Day",
    l.genre AS "Genre",
    CASE
        WHEN COUNT(ls.student_id) >= l.maxStudent THEN 'No Seats'
        WHEN COUNT(ls.student_id) >= l.maxStudent - 2 THEN '1 or 2 Seats'
        ELSE 'Many Seats'
    END AS "No of Free Seats"
FROM
    lesson l
LEFT JOIN lesson_student ls ON l.lesson_id = ls.lesson_id
WHERE
    EXTRACT(WEEK FROM l.time) = EXTRACT(WEEK FROM CURRENT_DATE) + 1
    AND l.minStudents = 8
GROUP BY
    l.lesson_id
ORDER BY
    l.genre, TO_CHAR(l.time, 'Day');
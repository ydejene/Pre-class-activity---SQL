

-- Query 2: Find students who scored less than 50% in the Linux course.
SELECT
    s.student_name,
    lg.grade_obtained
FROM
    students s
JOIN
    linux_grades lg ON s.student_id = lg.student_id
WHERE
    lg.grade_obtained < 50;

-- Query 3: Find students who took only one course (either Linux or Python, not both).
-- Use a UNION of students who took Linux and students who took Python,
-- then filter out those who took both using a subquery.
SELECT student_name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM (
        SELECT student_id FROM linux_grades
        UNION ALL
        SELECT student_id FROM python_grades
    ) AS all_courses
    GROUP BY student_id
    HAVING COUNT(student_id) = 1
);

-- Query 4: Find students who took both courses.
-- Use an INNER JOIN between the two grades tables.
SELECT DISTINCT
    s.student_name
FROM
    students s
JOIN
    linux_grades lg ON s.student_id = lg.student_id
JOIN
    python_grades pg ON s.student_id = pg.student_id;

-- Query 5: Calculate the average grade per course (Linux and Python separately).
-- Use a UNION to combine the results from two separate queries.
SELECT
    'Linux' AS course_name,
    AVG(grade_obtained) AS average_grade
FROM
    linux_grades
UNION ALL
SELECT
    'Python' AS course_name,
    AVG(grade_obtained) AS average_grade
FROM
    python_grades;

-- Query 6: Identify the top-performing student across both courses (based on the average of their grades).
-- This query uses a subquery to combine all grades, calculates the average per student,
-- and then orders the results to find the highest average.
SELECT
    s.student_name,
    AVG(T.grade_obtained) AS overall_average
FROM
    students s
JOIN (
    SELECT student_id, grade_obtained FROM linux_grades
    UNION ALL
    SELECT student_id, grade_obtained FROM python_grades
) AS T ON s.student_id = T.student_id
GROUP BY
    s.student_name
ORDER BY
    overall_average DESC
LIMIT 1;

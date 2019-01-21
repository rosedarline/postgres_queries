-- Write a query that finds students who do not take CS180

SELECT * FROM students 
WHERE student_no NOT IN (SELECT student_no FROM student_enrollment
					     WHERE course_no != 'CS180')
ORDER BY student_name;

-- Write a query to find students who take SC110 or CS107 byt not bothSELECT * FROM students 

SELECT * 
FROM students s, student_enrollment se
WHERE s.student_no = se.student_no
AND se.course_no IN ('CS110', 'CS107')
AND s.student_no NOT IN (SELECT s.student_no 
						 FROM student_enrollment s, student_enrollment e
					     WHERE s.student_no = e.student_no
						 AND s.course_no = 'CS110'
					     AND e.course_no = 'CS107')
						 
SELECT *
FROM students s
INNER JOIN student_enrollment se
ON s.student_no = se.student_no
WHERE se.course_no = 'CS110' OR se.course_no = 'CS107';

-- write a query to find students who take CS220 and not other courses

SELECT *
FROM students s
INNER JOIN student_enrollment se
ON s.student_no = se.student_no
WHERE se.course_no = 'CS220';

SELECT *
FROM students s , student_enrollment se
WHERE s.student_no = se.student_no
AND course_no = 'CS220';

-- Write a query that finds those students who takes at most 3 courses. Your query should exclude students 
-- that don't take any courses as well as those that more than 2 courses.

SELECT s.student_no, s.student_name, s.age, COUNT(*)
FROM students s, student_enrollment se
WHERE s.student_no = se.student_no
GROUP BY s.student_no, s.student_name, s.age
HAVING COUNT(*) <= 2;

-- Write a query to find students who are older than at most two other students.

SELECT * 
FROM students s
WHERE 2 <= (SELECT COUNT(*)
		    FROM students s2
		    WHERE s.age < s2.age);
			

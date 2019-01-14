SELECT * FROM student_enrollment
SELECT * FROM professors
SELECT * FROM students
SELECT * FROM courses
SELECT *  FROM teach

SELECT student_name, se.course_no, p.last_name
FROM students s
INNER JOIN student_enrollment se
ON s.student_no = se.student_no
INNER JOIN teach t
ON se.course_no = t.course_no
INNER jOIN professors p
ON t.last_name = p.last_name
ORDER BY student_name;

SELECT student_name, course_no, MIN(last_name)
FROM(
SELECT student_name, se.course_no, p.last_name
FROM students s
INNER JOIN student_enrollment se
ON s.student_no = se.student_no
INNER JOIN teach t
ON se.course_no = t.course_no
INNER jOIN professors p
ON t.last_name = p.last_name
) stud
GROUP BY student_name, course_no
ORDER BY student_name, course_no;

SELECT first_name
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees
			    WHERE department = e.department);
				
SELECT sd.student_no, student_name, course_no
FROM students sd
LEFT JOIN student_enrollment
ON sd.student_no = student_enrollment.student_no;

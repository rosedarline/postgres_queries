SELECT * FROM students
SELECT * FROM courses
SELECT * FROM student_enrollment

SELECT student_name
FROM students
WHERE student_no IN 
(SELECT student_no FROM student_enrollment 
               WHERE course_no IN 
 (SELECT course_no FROM courses
			   WHERE course_title
               IN('Physics', 'Us History')));
				  
SELECT student_name
FROM students
WHERE student_no IN 
 ( SELECT student_no FROM 
   (SELECT student_no, COUNT(course_no) course_count
FROM student_enrollment
GROUP BY Student_no
ORDER BY course_count DESC
LIMIT 1)sub
);				  
				  
SELECT * 
FROM students				  
WHERE age = (SELECT MAX(age) FROM students)
